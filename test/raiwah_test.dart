import 'package:raiwah/raiwah.dart';
import 'package:test/test.dart';

void main() {
  group('Area Interface', () {
    final sq = Area()..convert(AREAWithThaiUnits.rai, 1);
    final sq2 = Area()..convert(AREAWithThaiUnits.ngan, 1);

    setUp(() {
      // Additional setup goes here.
    });

    test('relation to sq meter', () {
      expect(sq.squareMeters.value, 1600.0);
      expect(sq2.squareMeters.value, 400.0);
    });

    test('relation to Thai units', () {
      expect(sq.ngan.value, 4.0);
      expect(sq.squareWah.value, 400);

      expect(sq2.rai.value, 0.25);
      expect(sq2.squareWah.value, 100.0);
    });

    test('relation to others', () {
      expect(sq.acres.value, 0.39536861034746457);
      expect(sq.hectares.value, 0.16);
    });

  });
}
