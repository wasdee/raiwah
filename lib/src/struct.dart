import 'package:raiwah/raiwah.dart';

/// A class to automatically convert square meters to rai, nga, and wah.
class RaiWah {
  late int rai;
  late int ngan;
  late double squareWah;

  RaiWah(this.rai, this.ngan, this.squareWah);

  RaiWah.fromSquareMeter(double squareMeter) {
    var area = Area()..convert(AREAWithThaiUnits.squareMeters, squareMeter);
    rai = area.rai.value!.toInt();
    area = Area()..convert(AREAWithThaiUnits.rai, area.rai.value! - rai);
    ngan = area.ngan.value!.toInt();
    area = Area()..convert(AREAWithThaiUnits.ngan, area.ngan.value! - ngan);
    squareWah = area.squareWah.value!;
  }
}
