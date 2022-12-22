import 'package:adaptive_breakpoints_freezed/adaptive/adaptive_extension.dart';
import 'package:adaptive_breakpoints_freezed/adaptive/adaptive_window_type.dart';
import 'package:flutter/material.dart';

extension AdaptiveWindowTypeExtension on BuildContext {
  AdaptiveWindowType get adaptive {
    return getWindowType(this);
  }
}
