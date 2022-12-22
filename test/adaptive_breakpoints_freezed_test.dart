// ignore_for_file: avoid_print

import 'package:adaptive_breakpoints_freezed/adaptive/adaptive_window_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test values should not change manually', () {
    expect(const AdaptiveWindowType.l() > const AdaptiveWindowType.s(), true);
  });

  test('test operator', () {
    expect(const AdaptiveWindowType.l() > const AdaptiveWindowType.s(), true);
  });

  test('Test last next', () {
    final current = AdaptiveWindowType.values.last;
    final next = current.next();
    print("current: $current > next: $next");
    expect(current > next, true);
  });

  test('Test first previous', () {
    final current = AdaptiveWindowType.values.first;
    final previous = current.previous();
    print("current: $current < previous: $previous");
    expect(current < previous, true);
  });



  
}
