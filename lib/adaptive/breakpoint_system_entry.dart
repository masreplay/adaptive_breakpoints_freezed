import 'package:adaptive_breakpoints_freezed/adaptive/adaptive_window_type.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breakpoint_system_entry.freezed.dart';

/// This class represents the Material breakpoint system entry.
/// https://material.io/design/layout/responsive-layout-grid.html#breakpoints

@Freezed(genericArgumentFactories: true)
class BreakpointSystemEntry with _$BreakpointSystemEntry {
  const BreakpointSystemEntry._();

  const factory BreakpointSystemEntry({
    /// The breakpoint range values represents a width range.
    required RangeValues range,

    /// Type of device which uses this breakpoint range in portrait view.
    String? portrait,

    /// Type of device which uses this breakpoint range in landscape view.
    String? landscape,

    /// Material generalizes the device size into five different windows: extra
    /// small, small, medium, large, and extra large.
    ///
    /// The adaptive window represents a set of similar devices. For example, if
    /// you want to create an adaptive layout for phones and small tablets you
    /// would check if your window width is within the range of xs and s. If your
    /// user has a bigger window size than you would create a different layout for
    /// larger screens.
    required AdaptiveWindowType adaptiveWindowType,

    /// The number of columns in this breakpoint system entry.
    /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
    required int columns,

    /// The size of margins in pixels in this breakpoint system entry.
    /// Typically the same as gutters.
    /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
    required double margins,

    /// The size of gutters in pixels in this breakpoint system entry. Typically
    /// the same as margins.
    ///
    /// Gutters represents the space between the columns.
    ///
    /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
    required double gutters,
  }) = _BreakpointSystemEntry;
}

/// This list represents the material breakpoint system.
/// https://material.io/design/layout/responsive-layout-grid.html#breakpoints
///
/// This list is in sequential order.
const List<BreakpointSystemEntry> breakpointSystem = [
  BreakpointSystemEntry(
    range: RangeValues(0, 359),
    portrait: 'small handset',
    adaptiveWindowType: AdaptiveWindowType.xs(),
    columns: 4,
    margins: 16.0,
    gutters: 16.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(360, 399),
    portrait: 'medium handset',
    adaptiveWindowType: AdaptiveWindowType.xs(),
    columns: 4,
    margins: 16.0,
    gutters: 16.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(400, 479),
    portrait: 'large handset',
    adaptiveWindowType: AdaptiveWindowType.xs(),
    columns: 4,
    margins: 16.0,
    gutters: 16.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(480, 599),
    portrait: 'large handset',
    landscape: 'small handset',
    adaptiveWindowType: AdaptiveWindowType.xs(),
    columns: 4,
    margins: 16.0,
    gutters: 16.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(600, 719),
    portrait: 'small tablet',
    landscape: 'medium handset',
    adaptiveWindowType: AdaptiveWindowType.s(),
    columns: 8,
    margins: 16.0,
    gutters: 16.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(720, 839),
    portrait: 'large tablet',
    landscape: 'large handset',
    adaptiveWindowType: AdaptiveWindowType.s(),
    columns: 8,
    margins: 24.0,
    gutters: 24.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(840, 959),
    portrait: 'large tablet',
    landscape: 'large handset',
    adaptiveWindowType: AdaptiveWindowType.s(),
    columns: 12,
    margins: 24.0,
    gutters: 24.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(960, 1023),
    landscape: 'small tablet',
    adaptiveWindowType: AdaptiveWindowType.s(),
    columns: 12,
    margins: 24.0,
    gutters: 24.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(1024, 1279),
    landscape: 'large tablet',
    adaptiveWindowType: AdaptiveWindowType.m(),
    columns: 12,
    margins: 24.0,
    gutters: 24.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(1280, 1439),
    landscape: 'large tablet',
    adaptiveWindowType: AdaptiveWindowType.m(),
    columns: 12,
    margins: 24.0,
    gutters: 24.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(1440, 1599),
    portrait: 'small handset',
    adaptiveWindowType: AdaptiveWindowType.l(),
    columns: 12,
    margins: 24.0,
    gutters: 24.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(1600, 1919),
    portrait: 'small handset',
    adaptiveWindowType: AdaptiveWindowType.l(),
    columns: 12,
    margins: 24.0,
    gutters: 24.0,
  ),
  BreakpointSystemEntry(
    range: RangeValues(1920, double.infinity),
    portrait: 'small handset',
    adaptiveWindowType: AdaptiveWindowType.xl(),
    columns: 12,
    margins: 24.0,
    gutters: 24.0,
  ),
];
