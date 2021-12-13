#include <Arduino.h>

// Compile Time Feature Flags
// USE_NOTECARD: bool: send json requests to the notecard
#define USE_NOTECARD
#define CONTINUOUS_NOTECARD_CONNECTION
// USE_MONITOR: bool: send debug info on the arduino ide serial monitor.
//#define USE_MONITOR

const int SAMPLE_PERIOD_SECONDS = 20;


#define LED_STOP         (5)
#define LED_SLOW         (6)
#define LED_CRUISE       (9)
#define LED_EXTRA       (10)
#define LED_ERROR       (11)

#define BUTTON_STOP     PIN_A5
#define BUTTON_SLOW     PIN_A4
#define BUTTON_CRUISE   PIN_A3
#define BUTTON_EXTRA    PIN_A2

struct led_state {
  bool stop   = true;
  bool slow   = false;
  bool cruise = false;
  bool extra  = false;
  bool error  = true;
} isLit;

struct pushed_state {
  bool stop;
  bool slow;
  bool cruise;
  bool extra;
} wasPushed;

#ifdef USE_NOTECARD

///////////// Notecard Settings //////////////
#define notecard SERIAL_PORT_HARDWARE

// NOTEHUB_PRODUCT_ID is the unique Product Identifier for your device.  This Product ID tells the Notecard
// what type of device has embedded the Notecard, and by extension which vendor or customer is in
// charge of "managing" it.  In order to set this value, you must first register with notehub.io and
// "claim" a unique product ID for your device.  It could be something as simple as as your email
// address in reverse, such as "com.blues.chenderson:telegraph"
#define NOTEHUB_PRODUCT_ID "com.blues.chenderson:telegraph"
// NOTEHUB_HOST is the Notehub cloud server the Notecard will be configured to use.
#define NOTEHUB_HOST "a.notefile.net"
#define NOTEFILE_NAME "navtail.qo"

// One-time Arduino initialization of notecard
void notecard_setup()
{

   // Initialize the serial port being used by the Notecard, and send newlines to clear out any data
   // that the Arduino software may have pending so that we always start sending commands "cleanly".
   // We use the speed of 9600 because the Notecard's RX/TX pins are always configured for that speed.
   notecard.begin(9600);
   notecard.println("\n\n");

   // This command (required) causes the data to be delivered to the Project on notehub.io that has claimed
   // this Product ID.	 (see above)
   notecard.println("{\"req\":\"service.set\",\"product\":\"" NOTEHUB_PRODUCT_ID "\",\"host\":\"" NOTEHUB_HOST "\"}");

   // This command determines how often the Notecard connects to the service.  If "continuous" the Notecard
   // immediately establishes a session with the service at notehub.io, and keeps it active continuously.
   // Because of the power requirements of a continuous connection, a battery powered device would instead
   // only sample its sensors occasionally, and would only upload to the service on a periodic basis.
#ifdef CONTINUOUS_NOTECARD_CONNECTION
   notecard.println("{\"req\":\"service.set\",\"mode\":\"continuous\"}");
#else
   notecard.println("{\"req\":\"service.set\",\"mode\":\"periodic\",\"minutes\":" NOTECARD_SYNC_PERIOD_MINUTES "}");
#endif
}

// In the Arduino main loop which is called repeatedly, add outbound data every 15 seconds
void notecard_send_message()
{

  const char *true_or_false[2] = { "false", "true" };

  /* Add a "note" to the Notecard, in a queue that we will choose to name "sensor.qo" because it will
  // contain our simulated "sensor data" and it is to be placed in a "queue" that is "outbound".
  // The "body" of the note is a JSON object completely of our own design, and is passed straight
  // through as-is to notehub.io and beyond.	(Note that we add the "start" flag for demonstration
  // purposes to upload the data instantaneously, so that if you are looking at this on notehub.io
  // you will see the data appearing 'live'.)  Note that we use a somewhat convoluted way of displaying
  // a floating point number because %f isn't supported in many versions of Arduino (newlib).
  */
  char message[600];
  snprintf(
    message,
    sizeof(message),
    "{"
      "\"req\":\"note.add\""
      ","
      "\"start\":true"
      ","
      "\"file\":\"" NOTEFILE_NAME "\""
      ","
      "\"body\":{"
        "\"stop\":%s,"
        "\"slow\":%s,"
        "\"cruise\":%s,"
        "\"extra\":%s"
      "}"
    "}",
    true_or_false[isLit.stop],
    true_or_false[isLit.slow],
    true_or_false[isLit.cruise],
    true_or_false[isLit.extra]
  );

  notecard.println(message);
}

#endif // USE_NOTECARD

#ifdef USE_MONITOR
// monitor_setup sets up the serial connection. It must be run once before
// SERIAL_PORT_MONITOR.print* functions can be used.
void monitor_setup()
{
   SERIAL_PORT_MONITOR.begin(9600);
   delay(1000);
}

void print_stats_table(int iter)
{
   const char *head = "now   min   avg   max  #bad last_bad";
   const char *form = "%3d   %3d   %3d   %3d   %3d    %4d  ";
   char buff[80];

   if (iter % 10 == 0)
   {
      SERIAL_PORT_MONITOR.println();
      SERIAL_PORT_MONITOR.println(head);
   }
   snprintf(buff, sizeof(buff), form, (int)probe_now, (int)probe_min, (int)probe_avg, (int)probe_max, (int)bad_count, (int)last_bad);
   SERIAL_PORT_MONITOR.println(buff);
}
#endif


bool isPushed(int button) {
  return digitalRead(button) == LOW;
}

void brighten(int led) {
  digitalWrite(led, HIGH);
}
void darken(int led) {
  digitalWrite(led, LOW);
}

void setup() {

  #ifdef USE_NOTECARD
    notecard_setup();
  #endif

  #ifdef USE_MONITOR
    monitor_setup();
  #endif

  pinMode(LED_STOP, OUTPUT);
  pinMode(LED_SLOW, OUTPUT);
  pinMode(LED_CRUISE, OUTPUT);
  pinMode(LED_EXTRA, OUTPUT);
  pinMode(LED_ERROR, OUTPUT);

  darken(LED_STOP);
  darken(LED_SLOW);
  darken(LED_CRUISE);
  darken(LED_EXTRA);
  darken(LED_ERROR);

  pinMode(BUTTON_STOP, INPUT_PULLUP);
  pinMode(BUTTON_SLOW, INPUT_PULLUP);
  pinMode(BUTTON_CRUISE, INPUT_PULLUP);
  pinMode(BUTTON_EXTRA, INPUT_PULLUP);

  brighten(LED_ERROR);
}

void debounce(){
  const int ms = 2;
  delay(ms);
}

void handle_buttons(){
  if(!wasPushed.stop && isPushed(BUTTON_STOP))
    isLit.stop = !isLit.stop;
  wasPushed.stop = isPushed(BUTTON_STOP);

  if(!wasPushed.slow && isPushed(BUTTON_SLOW))
    isLit.slow = !isLit.slow;
  wasPushed.slow = isPushed(BUTTON_SLOW);

  if(!wasPushed.cruise && isPushed(BUTTON_CRUISE))
    isLit.cruise = !isLit.cruise;
  wasPushed.cruise = isPushed(BUTTON_CRUISE);

  if(!wasPushed.extra && isPushed(BUTTON_EXTRA))
    isLit.extra = !isLit.extra;
  wasPushed.extra = isPushed(BUTTON_EXTRA);

}

void update_lights(){
  if(isLit.stop)    brighten(LED_STOP);   else darken(LED_STOP);
  if(isLit.slow)    brighten(LED_SLOW);   else darken(LED_SLOW);
  if(isLit.cruise)  brighten(LED_CRUISE); else darken(LED_CRUISE);
  if(isLit.extra)   brighten(LED_EXTRA);  else darken(LED_EXTRA);
  if(isLit.error)   brighten(LED_ERROR);  else darken(LED_ERROR);
}

int last_sync=0;
void sync() {
  const int next_sync = (last_sync + (SAMPLE_PERIOD_SECONDS * 1000));
  const int now = millis();
  if (now > next_sync ) {
    #ifdef USE_NOTECARD
      notecard_send_message();
    #endif
    #ifdef USE_MONITOR
      print_stats_table(iter);
    #endif
    last_sync = now;
  }
}

void loop() {
  sync();
  handle_buttons();
  update_lights();
  debounce();
}
