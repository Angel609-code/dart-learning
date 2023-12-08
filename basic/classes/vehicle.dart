// Abstarct class
// An abstract class can't be instantiated
abstract class Vehicle {
  String name;
  int year;
  bool isRunning = false;
  
  Vehicle(this.name, this.year, this.isRunning);
  
  void start() {
    isRunning = true;
    print('$name is running');
  }

  void stop() {
    isRunning = false;
    print('$name is stopped');
  }

  bool isMoving();
}