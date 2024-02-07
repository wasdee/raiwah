

# RaiWah(ไร่วา)
A dart library measure area land in Thai unit.

![cover](raiwah_cover.jpg)

## Features
- Convert Rai, Ngan, and Square Wah to international unit freely and visversa  with the same interface as  [`units_converter`](https://github.com/ferraridamiano/units_converter) package.
- Convinient class to automatic take remainder of the area to the next unit to show better UX.


## Installation

To get started with Raiwah, you need to have Dart SDK version 3.2.6 or higher installed.

Add Raiwah to your `pubspec.yaml` file:

```yaml
dependencies:
  raiwah: ^1.0.0
```
Then, run the following command to download the package:

```bash
$ dart pub get
```


## Usage

### Using RaiWah Convinient class

```dart
import 'package:raiwah/raiwah.dart';

// Create a RaiWah object from square meters
final raiNgaWah = RaiWah.fromSquareMeter(1600.0);

// Access the Rai, Ngan, and Wah properties
print(raiNgaWah.rai); // Outputs: 1
print(raiNgaWah.ngan); // Outputs: 0
print(raiNgaWah.squareWah); // Outputs: 0.0

// harder example
final raiNgaWah = RaiWah.fromSquareMeter(2050.5);
print(raiNgaWah.rai); // Outputs: 1
print(raiNgaWah.ngan); // Outputs: 1
print(raiNgaWah.squareWah); // Outputs: 12.624999999999975


```

### Using Area
Area is a class that allows you to convert between different units of area, including square meters and traditional Thai units of measurement.

Here's how you can use it:`

```dart
import 'package:raiwah/raiwah.dart';

// Create an Area object and convert 1 Rai into square meters
final sq = Area()..convert(AREAWithThaiUnits.rai, 1);

// Access the squareMeters, ngan, and squareWah properties
print(sq.squareMeters.value); // Outputs: 1600.0
print(sq.ngan.value); // Outputs: 4.0
print(sq.squareWah.value); // Outputs: 400

print(sq.acres.value); // Outputs: 0.3953...
print(sq.hectares.value); // Outputs: 0.16
```

## Testing
To run tests, use the following command:

```bash
$ dart test
```

## Contributing
Contributions are welcome. 

## Versioning
We use SemVer for versioning. For the versions available, see the tags on this repository.

