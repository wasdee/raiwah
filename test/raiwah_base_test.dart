import 'package:test/test.dart';
import 'package:raiwah/raiwah.dart';

void main() {
  group('RaiWah', () {
    test('fromSquareMeter', () {
      final raiWah = RaiWah.fromSquareMeter(1600.0);
      expect(raiWah.rai, 1);
      expect(raiWah.ngan, 0);
      expect(raiWah.squareWah, 0.0);
    });

    test('fromSquareMeter with decimal values', () {
      final raiWah = RaiWah.fromSquareMeter(2050.5);
      expect(raiWah.rai, 1);
      expect(raiWah.ngan, 1);
      expect(raiWah.squareWah, 12.624999999999975);
    });
  });
}
