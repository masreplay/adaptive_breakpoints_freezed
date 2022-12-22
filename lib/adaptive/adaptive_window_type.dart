import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'adaptive_window_type.freezed.dart';

/// Adaptive Window in Material has five different window sizes. Each window size
/// represents a range of devices.
///
/// Extra small represents phones and small tablets in portrait view.
/// Small represents tablets in portrait view and phones in landscape view.
/// Medium represents large tablets in landscape view.
/// Large represents computer screens.
/// Extra large represents large computer screens.
///
/// https://material.io/design/layout/responsive-layout-grid.html#breakpoints
///
/// enum representation
/// enum AdaptiveWindowType {
///   xs,
///   s,
///   m,
///   l,
///   xl,
/// }
///
///
/// example
/// .whenDevice(
///   desktop: () {},
///   mobile: () {},
///   tablet: () {},
/// ),
/// .when(
///   xl: () {},
///   l: () {},
///   m: () {},
///   s: () {},
///   xs: () {},
/// ),
/// .maybeWhen(
///   l: () {},
///   orElse: () {},
/// ),
///


@freezed
class AdaptiveWindowType with _$AdaptiveWindowType {
  const AdaptiveWindowType._();

  /// Extra small
  const factory AdaptiveWindowType.xs() = _AdaptiveWindowTypeXs;

  /// Small
  const factory AdaptiveWindowType.s() = _AdaptiveWindowTypeS;

  /// Medium
  const factory AdaptiveWindowType.m() = _AdaptiveWindowTypeM;

  /// Large
  const factory AdaptiveWindowType.l() = _AdaptiveWindowTypeL;

  /// Extra large
  const factory AdaptiveWindowType.xl() = _AdaptiveWindowTypeXl;

  /// Order matter same as [Enum.values]
  static const List<AdaptiveWindowType> values = [
    AdaptiveWindowType.xs(),
    AdaptiveWindowType.s(),
    AdaptiveWindowType.m(),
    AdaptiveWindowType.l(),
    AdaptiveWindowType.xl(),
  ];

  /// Is extra small
  bool get isXs => this is _AdaptiveWindowTypeXs;

  /// Is small
  bool get isS => this is _AdaptiveWindowTypeS;

  /// Is medium
  bool get isM => this is _AdaptiveWindowTypeM;

  /// Is Large
  bool get isL => this is _AdaptiveWindowTypeL;

  /// is extra large
  bool get isXl => this is _AdaptiveWindowTypeXl;

  /// Is extra small widget and small
  bool get isMobile => isXs || isS;

  /// Is large and medium
  bool get isTablet => isL || isM;

  /// Is extra large
  bool get isDesktop => isXl;

  /// Get next size from [values] return first item if current item is [_AdaptiveWindowTypeXs]
  AdaptiveWindowType next() {
    return values[(values.indexOf(this) + 1) % values.length];
  }

  /// Get previous size from [values] return last item if current item is [_AdaptiveWindowTypeXs]
  AdaptiveWindowType previous() {
    return values[(values.indexOf(this) - 1) % values.length];
  }

  /// When current size resent [mobile], [tablet], [desktop]
  T whenDevice<T>(
          {required ValueGetter<T> mobile,
          required ValueGetter<T> tablet,
          required ValueGetter<T> desktop}) =>
      when(xs: mobile, s: mobile, m: tablet, l: desktop, xl: desktop);

  /// When current size resent [mobile], [tablet], [desktop]
  /// Or return [orElse] if not provided
  T maybeWhenDevice<T>({
    ValueGetter<T>? mobile,
    ValueGetter<T>? tablet,
    ValueGetter<T>? desktop,
    required ValueGetter<T> orElse,
  }) =>
      whenDevice(
        mobile: mobile ?? orElse,
        tablet: tablet ?? orElse,
        desktop: desktop ?? orElse,
      );

  //
  bool operator <=(AdaptiveWindowType other) =>
      values.indexOf(this) <= values.indexOf(other);

  bool operator <(AdaptiveWindowType other) =>
      values.indexOf(this) < values.indexOf(other);

  bool operator >=(AdaptiveWindowType other) =>
      values.indexOf(this) >= values.indexOf(other);

  bool operator >(AdaptiveWindowType other) =>
      values.indexOf(this) > values.indexOf(other);

  String get name => when(
        xs: () => 'xsmall',
        s: () => 'small',
        m: () => 'medium',
        l: () => 'large',
        xl: () => 'xlarge',
      );

  RangeValues get widthRangeValues => when(
        xs: () => const RangeValues(0, 599),
        s: () => const RangeValues(600, 1023),
        m: () => const RangeValues(1024, 1439),
        l: () => const RangeValues(1440, 1919),
        xl: () => const RangeValues(1920, double.infinity),
      );

  RangeValues get heightLandscapeRangeValues => when(
        xs: () => const RangeValues(0, 359),
        s: () => const RangeValues(360, 719),
        m: () => const RangeValues(720, 959),
        l: () => const RangeValues(960, 1279),
        xl: () => const RangeValues(1280, double.infinity),
      );

  RangeValues get heightPortraitRangeValues => when(
        xs: () => const RangeValues(0, 959),
        s: () => const RangeValues(360, 1599),
        m: () => const RangeValues(720, 1919),
        l: () => const RangeValues(1920, double.infinity),
        xl: () => const RangeValues(1920, double.infinity),
      );
}
