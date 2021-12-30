#include "application.h"

struct _NavTailApp {
  bool is_stop_requested_;
  NavTailDisplay display_;
};

NavTailApp MakeNavTailApp(NavTailDisplay d) {
  static _NavTailApp kApp;
  kApp.display_ = d;
  return &kApp;
}

void display_fleet_status(NavTailApp app) {
  FleetStatusForDisplay status = {.is_stop_requested = app->is_stop_requested_};
  show(app->display_, status);
};

void request_stop(NavTailApp app) { app->is_stop_requested_ = true; }
