#ifndef navtail_application_h
#define navtail_application_h

// Driven Interface (dependencies)

typedef struct _NavTailDisplay *NavTailDisplay;

typedef struct {
  bool is_stop_requested;
} FleetStatusForDisplay;

void show(NavTailDisplay, FleetStatusForDisplay);

// Driving Interface

typedef struct _NavTailApp *NavTailApp;

NavTailApp MakeNavTailApp(NavTailDisplay);

void request_stop(NavTailApp);
void display_fleet_status(NavTailApp);

#endif
