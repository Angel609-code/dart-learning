
/// Person Class
/// A class is named as UpperCamelCase
/// Order: Fields or properties, Get and Sets, Constructors, Methods
class Person {
  String name;
  int age;
  // Private property
  String? _bio;
  String? _lastName;

  // Using setters and getters
  String get bio => _bio ?? 'No bio';
  String get lastName => _lastName ?? 'No last name';

  set bio(String bio) => _bio = bio;
  set lastName(String lastName) => _lastName = lastName;

  // Constructor
  // The this keyword refers to the current instance of the class
  Person(this.name, this.age);

  // Named constructor
  Person.withLastName(this.name, this.age, this._lastName);

  // Every class extends from Object class who has a toString method
  @override
  String toString() => 'Name: $name, Age: $age, Bio: $bio, Last name: $lastName';
}