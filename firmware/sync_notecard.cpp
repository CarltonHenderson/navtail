
// int last_sync=0;
// void sync() {
//   const int next_sync = (last_sync + (SAMPLE_PERIOD_SECONDS * 1000));
//   const int now = millis();
//   if (now > next_sync ) {
//     #ifdef USE_NOTECARD
//       notecard_send_message();
//     #endif
//     #ifdef USE_MONITOR
//       print_stats_table(iter);
//     #endif
//     last_sync = now;
//   }
// }
