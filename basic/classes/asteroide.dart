// Abstract class that uses mixins
import 'logger.dart';

abstract class Asteroide with Logger, Logger2 {
  String name;
  int year;
  bool isDangerous;

  Asteroide(this.name, this.year, this.isDangerous);

  @override
  String toString() {
    return 'Asteroide: $name, Year: $year, Dangerous: $isDangerous';
  }
}