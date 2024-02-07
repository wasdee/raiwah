import 'package:raiwah/raiwah.dart';

void main() {
  var one_rai = Area()..convert(AREAWithThaiUnits.rai, 1);

  var units = one_rai.getAll();
  for (var unit in units) {
    print(
        'name:${unit.name}, value:${unit.value}, stringValue:${unit.stringValue}, symbol:${unit.symbol}');
  }
}
