import 'dart:developer';

// The main function is the entry point of the app
main(){
  log('Variables'); // The log only appears when you run the app in debug mode
  
  variables();
  finalsAndConst();
  lateVariables();
  stringVariables();
  booleanVariables();
  listVariables();
  setVariables();
  mapVariables();

  //  In dart to declare a variable we can't use the var keyword
  //  And can't we use this characters
  //  ! # % & * + - / < = > ^ | ~ @

  // Comments
  // We can use the // notation to create single line comments, for example:
  // Example

  // We can use the /* */ notation to create multi-line comments, for example:
  /*
  Example
  */

  // We can use the /// notation to create documentation comments, for example:
  /// Example
  
  // The /// comments are used to generate documentation for the code using dartdoc (https://dart.dev/tools/dartdoc)
  // For example, if we want to generate documentation for this file
  // We can run the following command in the terminal
  // dartdoc
  // And it will generate a documentation folder with the documentation of this file
  // We can also use the /// notation to create documentation comment for a function or a class or a variable or a constant or a parameter or a return value or a field or a getter or a setter
  // For example, if we want to create documentation comment for a function
  // We can use the /// notation before the function
  /// This is a documentation comment for the main function
  /// 
  /// The main function is the entry point of the app
  
  // The /// comments allows to add markdown syntax to the comments
  // For example, if we want to add a link to the documentation comment
  // We can use the [text](url) syntax
  /// This is a documentation comment for the main function
  /// @see [main]
  /// @param text The text to print
  /// @param url The url to print
  /// @return The text and the url
  /// [variable] The variable to print
  
  // We can use the /** */ notation to create documentation comments for multi-line comments, for example:
  /**
   * Example
   */
}

// Final vs Const
void finalsAndConst(){
  // Final is a variable that can only be assigned once
  // Const is a variable that can only be assigned once at compile time

  // Final variables
  // We can't change the value of a final variable after the first assignment
  final String name = "John Doe";
  // name = "Jane Doe"; // Error

  // Const variables
  // We can't change the value of a const variable after the first assignment
  const String lastName = "Doe";
  // lastName = "Smith"; // Error

  // We can use const to create compile time constants
  // For example, if we want to create a const variable with the value of pi
  const double pi = 3.1416;

  // The difference between final and const is that const variables are compile time constants
  // And final variables are runtime constants
  // For example, if we want to create a const variable with the value of DateTime.now()
  // We can't do it because DateTime.now() is a runtime constant
  // const DateTime now = DateTime.now(); // Error

  // Another difference is that const variables are implicitly final
  // For example, if we want to create a const variable with the value of pi
  // We can do it using the const keyword
  const double pi2 = 3.1416;
  // Or we can do it using the final keyword
  final double pi3 = 3.1416;
  // But we can't do it using both keywords
  // const final double pi4 = 3.1416; // Error

  // Printing variables
  print(name);
  print(lastName);
  print(pi);
  print(pi2);
  print(pi3);
}

// Late Variables
void lateVariables(){
  // Late variables are variables that are initialized after they are declared
  // We can use late variables to initialize variables that are initialized after they are declared
  // For example, if we want to initialize a variable after the constructor
  // We can use the late keyword
  late String name;
  name = "John Doe";

  // Late and final
  // We can use late and final together
  // For example, if we want to initialize a variable after the constructor
  // And we want to make sure that the variable is only assigned once
  // We can use the late and final keywords together
  late final String lastName;
  lastName = "Doe";

  // Printing variables
  print(name);
  print(lastName);
}

// Variables types in dart
void variables(){
  // String
  String name = "John Doe";
 
  // int
  int age = 30;
  
  // double
  double height = 1.80;
  
  // bool
  bool isMale = true;
  
  // dynamic
  // The dynamic type is a special type that can be anything
  // We can change the type of the variable at runtime
  dynamic dynamicVariable = "I can be anything";
  dynamicVariable = 30;
  dynamicVariable = true;
  dynamicVariable = 1.80;
  
  // var
  // The var type is a special type that can be anything
  // We can change the type of the variable at runtime
  // But can't change the type of the variable after the first assignment
  var varVariable = "I can be anything";

  // Null safety variables
  String? nullableVariable = null;

  // Printing variables
  print(name);
  print(age);
  print(height);
  print(isMale);
  print(dynamicVariable);
  print(varVariable);
  print(nullableVariable);
}

void stringVariables(){
  String name = "John Doe";
  String lastName = "Doe";

  // String interpolation
  print("Hello $name $lastName");

  // String concatenation
  print("Hello " + name);

  // String methods
  // We can access to the methods of a string using the dot notation
  // There are many methods for strings, here are some examples
  print(name.toUpperCase());
  print(name.toLowerCase());
  print(name.length);

  // Scaping characters
  // The scaping character in dart is the backslash \
  // And it means that the next character is a special character
  // For example, if we want to print a double quote, we need to scape it
  print("Hello \"John Doe\""); // Hello "John Doe"

  // We can also scape the backslash
  print("Hello \\John Doe\\"); // Hello \John Doe\

  // Multi-line strings
  // We can use triple single quotes or triple double quotes
  // to create multi-line strings
  print('''Hello
  World''');

  // We can also use the backslash to scape the new line character and interpolate variables all in the multi-line string
  print('''Hello \
  World $name''');
}

// Boolean variables
void booleanVariables(){
  bool isMale = true;

  // Boolean operators
  // We can use the boolean operators &&, ||, !, ==, !=, <, >, <=, >=
  // && means AND
  // || means OR
  // ! means NOT
  // == means EQUALS
  // != means NOT EQUALS
  // < means LESS THAN
  // > means GREATER THAN
  // <= means LESS THAN OR EQUALS
  // >= means GREATER THAN OR EQUALS
  print(isMale && true); // true

  // We can also use the boolean operators with numbers
  print(1 < 2); // true

  // We can also use the boolean operators with strings
  print("John" == "John"); // true

  // We can also use the boolean operators with variables
  print(isMale == true); // true

  // We can also use the boolean operators with the result of a function
  print(isMale == isMaleMethod()); // true

  // We can negate the result of a boolean expression using the ! operator
  print(!(isMale == isMaleMethod())); // false
}

// Boolean functions
bool isMaleMethod(){
  return true;
}

// List variables
void listVariables(){
  // A list is a collection of elements
  
  // We can create a list using the [] notation
  List<String> names = [];

  // We can add elements to the list using the add method
  names.add("John");
  names.add("Doe");

  print(names); // [John, Doe]

  // We can access to the elements of the list using the [] notation
  // We just need to pass the index of the element
  print(names[0]); // John

  // We can also use the length property to get the length of the list
  print(names.length); // 2

  // We can also use the length property to get the last element of the list
  print(names[names.length - 1]); // Doe

  // We can create empty lists using the [] notation
  List<String> emptyList = [];

  print(emptyList.isEmpty);
}


// Set variables
void setVariables(){
  // A set is a collection of unique elements

  // We can create a set using the {} notation
  Set<String> names = {};

  // We can add elements to the set using the add method
  names.add("John");
  names.add("Doe");

  print(names); // {John, Doe}

  // We can also use the length property to get the length of the set
  print(names.length); // 2

  // If we tried to add an element that already exists in the set, it will be ignored
  names.add("John");
  print(names); // {John, Doe}

  // We can create empty sets using the {} notation
  Set<String> emptySet = {};

  print(emptySet.isEmpty);
}

// Map variables (Dictionary or Object literal in other languages)
void mapVariables(){
  // A map is a collection of key-value pairs

  // We can create a map using the {} notation
  Map<String, String> person = {};

  // We can add key-value pairs to the map using the [] notation
  person["name"] = "John";
  person["lastName"] = "Doe";

  // We can access to the elements of the map using the [] notation
  // We just need to pass the key of the element
  print(person["name"]); // John

  // We can also use the length property to get the length of the map
  print(person.length); // 2

  // We can also use the length property to get the last element of the map
  print(person[person.length - 1]); // Doe

  // We can initialize a map with default values using the {} notation
  Map<String, String> person2 = {
    "name": "John",
    "lastName": "Doe"
  };

  print(person2); // {name: John, lastName: Doe}

  // The map key can be any type
  Map<dynamic, String> person3 = {
    "name": "John",
    30: "Doe"
  };

  print(person3);

  // To print the map keys and values we can use the forEach method
  person3.forEach((key, value) {
    print(key);
    print(value);
  });

  // To print the value of a key we can use the [] notation
  print(person3["name"]);
  print(person3[30]);

  // We can create empty maps using the {} notation
  Map<String, String> emptyMap = {};

  print(emptyMap.isEmpty);
}