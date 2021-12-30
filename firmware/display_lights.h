#ifndef navtail_display_lights_h
#define navtail_display_lights_h

#include "application.h"

// Driven Interface (dependencies)

enum class LightColor {
  kRed = 0,
  kYellow,
  kGreen,
  kBlue,
  kWhite,
};

enum class LightState {
  kDark = 0,
  kFlashing,
  kLit,
};

typedef void (*light_setter_t)(LightColor, LightState); // Function Pointer

// Driving Interface

NavTailDisplay MakeNavTailDisplay(light_setter_t);

#endif
