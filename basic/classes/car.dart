// class that extends from vehicle
import 'vehicle.dart';

class Car extends Vehicle {
  int mileage = 0;

  // The super keyword is used to refer to the immediate parent of a class.
  Car(String name, int year, bool isRunning, this.mileage) : super(name, year, isRunning);

  // The @override annotation tells the analyzer that you are intentionally
  // overriding a member.
  @override
  String toString() {
    return 'Car{name: $name, year: $year, isRunning: $isRunning, mileage: $mileage}';
  }
  
  @override
  bool isMoving() {
    return isRunning;
  }
}