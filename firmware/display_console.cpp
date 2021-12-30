#include "display_console.h"
#include "application.h"

struct _NavTailDisplay {
  printer_t printer_;
};

NavTailDisplay MakeDisplayConsole(printer_t p) {
  static _NavTailDisplay kDisplay;
  kDisplay.printer_ = p;
  return &kDisplay;
}

void show(NavTailDisplay disp, FleetStatusForDisplay status) {
  disp->printer_("Stop Requested: ");
  disp->printer_(status.is_stop_requested ? "Requested" : "-");
  disp->printer_("\n");
}
