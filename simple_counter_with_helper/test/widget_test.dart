import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:simple_counter_with_helper/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    expect(find.text('counter: 0'), findsOneWidget);
    expect(find.text('counter: 1'), findsNothing);

    await tester.tap(find.text("+1"));
    await tester.pump();

    expect(find.text('counter: 0'), findsNothing);
    expect(find.text('counter: 1'), findsOneWidget);
  });
}
