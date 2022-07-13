import 'package:calculator_lexemes/service/calculator/calculator.dart';

void main(List<String> arguments) {
  print(Calculator("3+4/2-8+(4*3)").execute());
  print(Calculator("a+3+(4*7)-(b/3)", {"a": 77, "b": 9}).execute());
  print(Calculator("12+30 - 7 + 18 + (22-7)").execute());
  print(Calculator("x+(3+(6*(2+y)))/7", {"x": 8, "y": 1}).execute());
}
