import 'classes/Person.dart';
import 'classes/location.dart';
import 'classes/rectangle.dart';
import 'classes/square.dart';
import 'classes/tools.dart';

void main(){
  var person = Person('John', 30);

  print(person);

  // A property that a class has can be updated
  person.name = 'John Doe';
  print(person);

  // Declaring a Person specifying a value for private properties
  var person2 = Person('Mary', 25);
  person2.bio = 'Mary is a very nice person';
  
  print(person2);

  // Cascade operator
  // It allows to call methods and properties of an object without having to repeat the object name
  var person3 = Person('Peter', 40)
    ..bio = 'Peter is a very nice person'
    ..lastName = 'Parker';
  
  print(person3);

  // Named constructor
  var person4 = Person.withLastName('Clark', 35, 'Kent');
  print(person4);

  // Square class
  // Class with final properties
  var square = Square(10);
  print(square);

  // Class with const constructor
  var location = const Location(10.5, 20.5);
  print(location);

  // The classes with const constructor can be compared
  // Also a class with const constructor point to the same memory address
  var location2 = const Location(10.5, 20.5);
  print(location == location2);

  // Class with factory
  var rectangle = Rectangle(10, 10);
  print(rectangle);

  var rectangle2 = Rectangle(10, 20);
  print(rectangle2);

  // Class with static properties and methods
  // The static properties and methods are shared between all instances of the class
  print(Tools.toolsList);
  print(Tools.getTool(1));
}