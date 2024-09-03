import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:three_counter/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    expect(find.text('counter1: 0'), findsOneWidget);
    expect(find.text('counter2: 0'), findsOneWidget);
    expect(find.text('total: 0'), findsOneWidget);

    await tester.tap(find.text("counter1++"));
    await tester.pump();

    expect(find.text('counter1: 1'), findsOneWidget);
    expect(find.text('counter2: 0'), findsOneWidget);
    expect(find.text('total: 1'), findsOneWidget);

    await tester.tap(find.text("counter2++"));
    await tester.pump();

    expect(find.text('counter1: 1'), findsOneWidget);
    expect(find.text('counter2: 1'), findsOneWidget);
    expect(find.text('total: 2'), findsOneWidget);
  });
}
