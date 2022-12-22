import 'package:adaptive_breakpoints_freezed/adaptive/breakpoint_system_entry.dart';
import 'package:flutter/material.dart';

typedef AdaptiveWidgetBuilder = Widget Function(
  BuildContext context,
  BreakpointSystemEntry entry,
  BoxConstraints constraints,
);
