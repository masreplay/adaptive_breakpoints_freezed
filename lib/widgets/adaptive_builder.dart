import 'package:adaptive_breakpoints_freezed/widgets/adaptive_builder_callback.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../adaptive/adaptive_extension.dart';

class AdaptiveBuilder extends StatelessWidget {
  const AdaptiveBuilder({super.key, required this.builder});

  final AdaptiveWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final entry = getBreakpointEntry(context);
        if (kDebugMode) print("constraints: $constraints, entry: $entry");

        return builder(context, entry, constraints);
      },
    );
  }
}
