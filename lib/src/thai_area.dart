import 'package:units_converter/models/conversion_node.dart';
import 'package:units_converter/models/double_property.dart';
import 'package:units_converter/models/property.dart';
import 'package:units_converter/models/unit.dart';

enum AREAWithThaiUnits {
  squareMeters,
  squareCentimeters,
  squareInches,
  squareFeet,
  squareFeetUs,
  squareMiles,
  squareYard,
  squareMillimeters,
  squareKilometers,
  hectares,
  acres,
  are,
  rai,
  ngan,
  squareWah,
}

class Area extends DoubleProperty<AREAWithThaiUnits> {
  ///Class for area conversions, e.g. if you want to convert 1 square meters in
  ///acres:
  ///```dart
  ///var area = Area(removeTrailingZeros: false);
  ///area.convert(Unit(AREAWithThaiUnits.square_meters, value: 1));
  ///print(AREAWithThaiUnits.acres);
  /// ```
  Area(
      {super.significantFigures,
      super.removeTrailingZeros,
      super.useScientificNotation,
      name})
      : super(
          name: name ?? PROPERTY.area,
          mapSymbols: {
            AREAWithThaiUnits.squareMeters: 'm²',
            AREAWithThaiUnits.squareCentimeters: 'cm²',
            AREAWithThaiUnits.squareInches: 'in²',
            AREAWithThaiUnits.squareFeet: 'ft²',
            AREAWithThaiUnits.squareFeetUs: 'ft² (US survey)',
            AREAWithThaiUnits.squareMiles: 'mi²',
            AREAWithThaiUnits.squareYard: 'yd²',
            AREAWithThaiUnits.squareMillimeters: 'mm²',
            AREAWithThaiUnits.squareKilometers: 'km²',
            AREAWithThaiUnits.hectares: 'ha',
            AREAWithThaiUnits.acres: 'ac',
            AREAWithThaiUnits.are: 'a',
            AREAWithThaiUnits.rai: 'ไร่',
            AREAWithThaiUnits.ngan: 'งาน',
            AREAWithThaiUnits.squareWah: 'ตรว.',
          },
          conversionTree:
              ConversionNode(name: AREAWithThaiUnits.squareMeters, children: [
            ConversionNode(
                coefficientProduct: 1e-4,
                name: AREAWithThaiUnits.squareCentimeters,
                children: [
                  ConversionNode(
                      coefficientProduct: 6.4516,
                      name: AREAWithThaiUnits.squareInches,
                      children: [
                        ConversionNode(
                          coefficientProduct: 144.0,
                          name: AREAWithThaiUnits.squareFeet,
                        ),
                        ConversionNode(
                          coefficientProduct: 12.000024 * 12.000024,
                          name: AREAWithThaiUnits.squareFeetUs,
                        ),
                      ]),
                ]),
            ConversionNode(
              coefficientProduct: 1e-6,
              name: AREAWithThaiUnits.squareMillimeters,
            ),
            ConversionNode(
              coefficientProduct: 10000.0,
              name: AREAWithThaiUnits.hectares,
            ),
            ConversionNode(
              coefficientProduct: 1000000.0,
              name: AREAWithThaiUnits.squareKilometers,
            ),
            ConversionNode(
              coefficientProduct: 0.83612736,
              name: AREAWithThaiUnits.squareYard,
              children: [
                ConversionNode(
                  coefficientProduct: 3097600.0,
                  name: AREAWithThaiUnits.squareMiles,
                ),
                ConversionNode(
                  coefficientProduct: 4840.0,
                  name: AREAWithThaiUnits.acres,
                ),
              ],
            ),
            ConversionNode(
              coefficientProduct: 100.0,
              name: AREAWithThaiUnits.are,
            ),
            ConversionNode(
                name: AREAWithThaiUnits.rai,
                coefficientProduct: 1600.0,
                children: [
                  ConversionNode(
                    coefficientProduct: 1 / 4,
                    name: AREAWithThaiUnits.ngan,
                  ),
                  ConversionNode(
                    coefficientProduct: 1 / 400,
                    name: AREAWithThaiUnits.squareWah,
                  ),
                ])
          ]),
        );

  Unit get squareMeters => getUnit(AREAWithThaiUnits.squareMeters);
  Unit get squareCentimeters => getUnit(AREAWithThaiUnits.squareCentimeters);
  Unit get squareInches => getUnit(AREAWithThaiUnits.squareInches);
  Unit get squareFeet => getUnit(AREAWithThaiUnits.squareFeet);
  Unit get squareFeetUs => getUnit(AREAWithThaiUnits.squareFeetUs);
  Unit get squareMiles => getUnit(AREAWithThaiUnits.squareMiles);
  Unit get squareYard => getUnit(AREAWithThaiUnits.squareYard);
  Unit get squareMillimeters => getUnit(AREAWithThaiUnits.squareMillimeters);
  Unit get squareKilometers => getUnit(AREAWithThaiUnits.squareKilometers);
  Unit get hectares => getUnit(AREAWithThaiUnits.hectares);
  Unit get acres => getUnit(AREAWithThaiUnits.acres);
  Unit get are => getUnit(AREAWithThaiUnits.are);
  Unit get rai => getUnit(AREAWithThaiUnits.rai);
  Unit get ngan => getUnit(AREAWithThaiUnits.ngan);
  Unit get squareWah => getUnit(AREAWithThaiUnits.squareWah);
}
