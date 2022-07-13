import 'package:calculator_lexemes/service/calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Calculate', () {
    test('plus, divide, multiply', () {
      final int result = Calculator("3+4/2-8+(4*3)").execute();
      expect(result, equals(9));
    }, skip: false);

    test('plus, minus operation without params', () {
      final int result = Calculator("12+30 - 7 + 18 + (22-7)").execute();
      expect(result, equals(68));
    }, skip: false);

    test('with params', () {
      final int result =
          Calculator("a+3+(4*7)-(b/3)", {"a": 77, "b": 9}).execute();
      expect(result, equals(105));
    }, skip: false);

    test('with brackets', () {
      final int result =
          Calculator("x+(3+(6*(2+y)))/7", {"x": 8, "y": 1}).execute();
      expect(result, equals(11));
    }, skip: false);
  });
}
