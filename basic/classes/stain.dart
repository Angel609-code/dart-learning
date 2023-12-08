// Class that uses an abstract class with mixins
import 'asteroide.dart';

class Stain extends Asteroide {
  Stain(String name, int year, bool isDangerous) : super(name, year, isDangerous);

  @override
  String toString() {
    return 'Stain: $name, Year: $year, Dangerous: $isDangerous';
  }
}