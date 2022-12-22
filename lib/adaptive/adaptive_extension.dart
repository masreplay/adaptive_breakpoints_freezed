import 'package:adaptive_breakpoints_freezed/adaptive/breakpoint_system_entry.dart';
import 'package:flutter/material.dart';

import 'adaptive_window_type.dart';

/// Returns the [AdaptiveWindowType] to the user.
///
/// This is useful when the user wants to compare the MediaQuery to the current
/// window size.
AdaptiveWindowType getWindowType(BuildContext context) {
  return getBreakpointEntry(context).adaptiveWindowType;
}

/// Returns the [BreakpointSystemEntry] to the user.
///
/// Typically the developer will use the getWindowType function. Using this
/// function gives the developer access to the specific breakpoint entry and
/// it's variables.
BreakpointSystemEntry getBreakpointEntry(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  for (BreakpointSystemEntry entry in breakpointSystem) {
    if (entry.range.start <= width && width < entry.range.end + 1) {
      return entry;
    }
  }
  throw AssertionError('Something unexpected happened');
}
