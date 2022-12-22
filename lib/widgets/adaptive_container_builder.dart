import 'package:adaptive_breakpoints_freezed/widgets/adaptive_builder_callback.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../adaptive/adaptive_extension.dart';

/// The AdaptiveContainerBuilder does everything a normal container does but with
/// adaptive constraints. For more information go to one of the links below.
///
/// https://api.flutter.dev/flutter/widgets/Container-class.html
/// https://material.io/design/layout/responsive-layout-grid.html#breakpoints
///
/// This class is useful whenever you want a container to only be active in
/// certain [AdaptiveWindowType].
class AdaptiveContainerBuilder extends StatelessWidget {
  /// Creates a widget that combines common painting, positioning, and sizing widgets.
  ///
  /// The `color` and `decoration` arguments cannot both be supplied, since
  /// it would potentially result in the decoration drawing over the background
  /// color. To supply a decoration with a color, use `decoration:
  /// BoxDecoration(color: color)`.
  AdaptiveContainerBuilder({
    Key? key,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.margin,
    this.transform,
    this.height,
    this.clipBehavior = Clip.none,
    required this.builder,
  })  : assert(margin == null || margin.isNonNegative),
        assert(padding == null || padding.isNonNegative),
        assert(decoration == null || decoration.debugAssertIsValid()),
        assert(
            color == null || decoration == null,
            'Cannot provide both a color and a decoration\n'
            'To provide both, use "decoration: BoxDecoration(color: color)".'),
        super(key: key);

  /// Represents how height the container should be.
  final double? height;

  /// Creates constraints for adaptive windows.
  ///
  /// This is used by the builder to see what type of screen the user wants this
  /// [AdaptiveContainerBuilder] to fit within.
  final AdaptiveWidgetBuilder builder;

  /// Align the [child] within the container.
  ///
  /// If non-null, the container will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final AlignmentGeometry? alignment;

  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  ///
  /// This padding is in addition to any padding inherent in the [decoration];
  /// see [Decoration.padding].
  final EdgeInsetsGeometry? padding;

  /// The color to paint behind the [child].
  ///
  /// This property should be preferred when the background is a simple color.
  /// For other cases, such as gradients or images, use the [decoration]
  /// property.
  ///
  /// If the [decoration] is used, this property must be null. A background
  /// color may still be painted by the [decoration] even if this property is
  /// null.
  final Color? color;

  /// The decoration to paint behind the [child].
  ///
  /// Use the [color] property to specify a simple solid color.
  ///
  /// The [child] is not clipped to the decoration. To clip a child to the shape
  /// of a particular [ShapeDecoration], consider using a [ClipPath] widget.
  final Decoration? decoration;

  /// The decoration to paint in front of the [child].
  final Decoration? foregroundDecoration;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry? margin;

  /// The transformation matrix to apply before painting the container.
  final Matrix4? transform;

  /// The clip behavior when [Container.decoration] has a clipPath.
  ///
  /// Defaults to [Clip.none].
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final entry = getBreakpointEntry(context);
        if (kDebugMode) print("constraints: $constraints, entry: $entry");
        return Container(
          alignment: alignment,
          padding: padding,
          color: color,
          decoration: decoration,
          foregroundDecoration: foregroundDecoration,
          width: MediaQuery.of(context).size.width - (entry.margins * 2),
          height: height,
          margin: EdgeInsets.symmetric(horizontal: entry.margins),
          transform: transform,
          clipBehavior: clipBehavior,
          constraints: BoxConstraints(
            minWidth: entry.adaptiveWindowType.widthRangeValues.start,
            maxWidth: entry.adaptiveWindowType.widthRangeValues.end,
          ),
          child: builder(context, entry, constraints),
        );
      },
    );
  }
}
