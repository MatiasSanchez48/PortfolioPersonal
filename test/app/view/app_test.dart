import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_personal/app/app.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const ViewApp());
      expect(find.byType, findsOneWidget);
    });
  });
}
