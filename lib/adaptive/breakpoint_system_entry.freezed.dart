// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breakpoint_system_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BreakpointSystemEntry {
  /// The breakpoint range values represents a width range.
  RangeValues get range => throw _privateConstructorUsedError;

  /// Type of device which uses this breakpoint range in portrait view.
  String? get portrait => throw _privateConstructorUsedError;

  /// Type of device which uses this breakpoint range in landscape view.
  String? get landscape => throw _privateConstructorUsedError;

  /// Material generalizes the device size into five different windows: extra
  /// small, small, medium, large, and extra large.
  ///
  /// The adaptive window represents a set of similar devices. For example, if
  /// you want to create an adaptive layout for phones and small tablets you
  /// would check if your window width is within the range of xs and s. If your
  /// user has a bigger window size than you would create a different layout for
  /// larger screens.
  AdaptiveWindowType get type => throw _privateConstructorUsedError;

  /// The number of columns in this breakpoint system entry.
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  int get columns => throw _privateConstructorUsedError;

  /// The size of margins in pixels in this breakpoint system entry.
  /// Typically the same as gutters.
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  double get margins => throw _privateConstructorUsedError;

  /// The size of gutters in pixels in this breakpoint system entry. Typically
  /// the same as margins.
  ///
  /// Gutters represents the space between the columns.
  ///
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  double get gutters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BreakpointSystemEntryCopyWith<BreakpointSystemEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreakpointSystemEntryCopyWith<$Res> {
  factory $BreakpointSystemEntryCopyWith(BreakpointSystemEntry value,
          $Res Function(BreakpointSystemEntry) then) =
      _$BreakpointSystemEntryCopyWithImpl<$Res, BreakpointSystemEntry>;
  @useResult
  $Res call(
      {RangeValues range,
      String? portrait,
      String? landscape,
      AdaptiveWindowType type,
      int columns,
      double margins,
      double gutters});

  $AdaptiveWindowTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$BreakpointSystemEntryCopyWithImpl<$Res,
        $Val extends BreakpointSystemEntry>
    implements $BreakpointSystemEntryCopyWith<$Res> {
  _$BreakpointSystemEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? type = null,
    Object? columns = null,
    Object? margins = null,
    Object? gutters = null,
  }) {
    return _then(_value.copyWith(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AdaptiveWindowType,
      columns: null == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as int,
      margins: null == margins
          ? _value.margins
          : margins // ignore: cast_nullable_to_non_nullable
              as double,
      gutters: null == gutters
          ? _value.gutters
          : gutters // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdaptiveWindowTypeCopyWith<$Res> get type {
    return $AdaptiveWindowTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BreakpointSystemEntryCopyWith<$Res>
    implements $BreakpointSystemEntryCopyWith<$Res> {
  factory _$$_BreakpointSystemEntryCopyWith(_$_BreakpointSystemEntry value,
          $Res Function(_$_BreakpointSystemEntry) then) =
      __$$_BreakpointSystemEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RangeValues range,
      String? portrait,
      String? landscape,
      AdaptiveWindowType type,
      int columns,
      double margins,
      double gutters});

  @override
  $AdaptiveWindowTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$_BreakpointSystemEntryCopyWithImpl<$Res>
    extends _$BreakpointSystemEntryCopyWithImpl<$Res, _$_BreakpointSystemEntry>
    implements _$$_BreakpointSystemEntryCopyWith<$Res> {
  __$$_BreakpointSystemEntryCopyWithImpl(_$_BreakpointSystemEntry _value,
      $Res Function(_$_BreakpointSystemEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? type = null,
    Object? columns = null,
    Object? margins = null,
    Object? gutters = null,
  }) {
    return _then(_$_BreakpointSystemEntry(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AdaptiveWindowType,
      columns: null == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as int,
      margins: null == margins
          ? _value.margins
          : margins // ignore: cast_nullable_to_non_nullable
              as double,
      gutters: null == gutters
          ? _value.gutters
          : gutters // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_BreakpointSystemEntry extends _BreakpointSystemEntry {
  const _$_BreakpointSystemEntry(
      {required this.range,
      this.portrait,
      this.landscape,
      required this.type,
      required this.columns,
      required this.margins,
      required this.gutters})
      : super._();

  /// The breakpoint range values represents a width range.
  @override
  final RangeValues range;

  /// Type of device which uses this breakpoint range in portrait view.
  @override
  final String? portrait;

  /// Type of device which uses this breakpoint range in landscape view.
  @override
  final String? landscape;

  /// Material generalizes the device size into five different windows: extra
  /// small, small, medium, large, and extra large.
  ///
  /// The adaptive window represents a set of similar devices. For example, if
  /// you want to create an adaptive layout for phones and small tablets you
  /// would check if your window width is within the range of xs and s. If your
  /// user has a bigger window size than you would create a different layout for
  /// larger screens.
  @override
  final AdaptiveWindowType type;

  /// The number of columns in this breakpoint system entry.
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  @override
  final int columns;

  /// The size of margins in pixels in this breakpoint system entry.
  /// Typically the same as gutters.
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  @override
  final double margins;

  /// The size of gutters in pixels in this breakpoint system entry. Typically
  /// the same as margins.
  ///
  /// Gutters represents the space between the columns.
  ///
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  @override
  final double gutters;

  @override
  String toString() {
    return 'BreakpointSystemEntry(range: $range, portrait: $portrait, landscape: $landscape, type: $type, columns: $columns, margins: $margins, gutters: $gutters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BreakpointSystemEntry &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.columns, columns) || other.columns == columns) &&
            (identical(other.margins, margins) || other.margins == margins) &&
            (identical(other.gutters, gutters) || other.gutters == gutters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, range, portrait, landscape, type, columns, margins, gutters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BreakpointSystemEntryCopyWith<_$_BreakpointSystemEntry> get copyWith =>
      __$$_BreakpointSystemEntryCopyWithImpl<_$_BreakpointSystemEntry>(
          this, _$identity);
}

abstract class _BreakpointSystemEntry extends BreakpointSystemEntry {
  const factory _BreakpointSystemEntry(
      {required final RangeValues range,
      final String? portrait,
      final String? landscape,
      required final AdaptiveWindowType type,
      required final int columns,
      required final double margins,
      required final double gutters}) = _$_BreakpointSystemEntry;
  const _BreakpointSystemEntry._() : super._();

  @override

  /// The breakpoint range values represents a width range.
  RangeValues get range;
  @override

  /// Type of device which uses this breakpoint range in portrait view.
  String? get portrait;
  @override

  /// Type of device which uses this breakpoint range in landscape view.
  String? get landscape;
  @override

  /// Material generalizes the device size into five different windows: extra
  /// small, small, medium, large, and extra large.
  ///
  /// The adaptive window represents a set of similar devices. For example, if
  /// you want to create an adaptive layout for phones and small tablets you
  /// would check if your window width is within the range of xs and s. If your
  /// user has a bigger window size than you would create a different layout for
  /// larger screens.
  AdaptiveWindowType get type;
  @override

  /// The number of columns in this breakpoint system entry.
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  int get columns;
  @override

  /// The size of margins in pixels in this breakpoint system entry.
  /// Typically the same as gutters.
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  double get margins;
  @override

  /// The size of gutters in pixels in this breakpoint system entry. Typically
  /// the same as margins.
  ///
  /// Gutters represents the space between the columns.
  ///
  /// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
  double get gutters;
  @override
  @JsonKey(ignore: true)
  _$$_BreakpointSystemEntryCopyWith<_$_BreakpointSystemEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
