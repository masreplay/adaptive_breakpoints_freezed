import 'package:adaptive_breakpoints_freezed/adaptive/adaptive_window_type.dart';
import 'package:adaptive_breakpoints_freezed/adaptive_breakpoints_freezed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class SizeTestWidget extends StatelessWidget {
  const SizeTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AdaptiveBuilder(
          builder: (context, entry, constraints) {
            return Text(entry.adaptiveWindowType.name);
          },
        ),
      ),
    );
  }
}

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows you to build and interact
  // with widgets in the test environment.c
  testWidgets('MyWidget Size Mobile', (tester) async {
    const type = AdaptiveWindowType.l();

    await tester.pumpWidget(
      MediaQuery(
        data: MediaQueryData(size: Size.square(type.widthRangeValues.end)),
        child: const SizeTestWidget(),
      ),
    );
    Future.delayed(const Duration(seconds: 10));

    final titleFinder = find.text(type.name);
    expect(titleFinder, findsOneWidget);
  });
}
