void main(){
  // Basic no retrival function, greeting
  greeting();

  // Basic function with parameters
  greetingWithName('John');

  // Basic function with optional parameters
  greetingWithNameAndAge('John');

  // Basic function with named parameters
  greetingWithNameAndAge2('John', age: 18);

  // Basic function with named parameters and default values
  greetingWithNameAndAge3('John');

  // Basic function with optional parameters and default values
  greetingWithNameAndAge4('John');

  // Required named parameters
  requiredNamedParameters(name: 'John', age: 20);

  // The primitive data types are passed to the functions by value
  // But the objects are passed to the functions by reference
  Map<String, String> map = {'name': 'John', 'age': '20'};
  print(map);

  print(uppercaseMap(map));

  greetingWithNameAndAge5('John', 20);
  
  // The arrow function
  var sayHello = getGreetingWithNameAndAge5('John', 20);
  print(sayHello);

  // Callback function
  print('Callback function');
  getUserData('John', 20, greetingWithNameAndAge5);
}

// Basic non-retrival function, greeting
void greeting(){
  print('Hello World');
}

// Basic function with parameters
void greetingWithName(String name){
  print('Hello $name');
}

// Basic function with optional parameters
void greetingWithNameAndAge(String name, [int? age]){
  if(age == null){
    print('Hello $name');
  }else{
    print('Hello $name, you are $age years old');
  }
}

// Basic function with named parameters
void greetingWithNameAndAge2(String name, {int? age}){
  if(age == null){
    print('Hello $name');
  }else{
    print('Hello $name, you are $age years old');
  }
}

// Basic function with named parameters and default values
void greetingWithNameAndAge3(String name, {int age = 18}){
  print('Hello $name, you are $age years old');
}

// Basic function with optional parameters and default values
void greetingWithNameAndAge4(String name, [int age = 18]){
  print('Hello $name, you are $age years old');
}

// Required named parameters
void requiredNamedParameters({required String name, required int age}){
  print('Hello $name, you are $age years old');
}

// The primitive data types are passed to the functions by value
// But the objects are passed to the functions by reference
// The functions can modify the objects
// The functions can't modify the primitive data types
// The functions can't modify the objects if they are declared as final
Map<String, String>  uppercaseMap(Map<String, String> map){
  map.forEach((key, value) {
    map[key] = value.toUpperCase();
  });

  return map;
}

// Lambda function
var greetingWithNameAndAge5 = (String name, [int? age]) {
  if(age == null){
    print('Hello $name');
  }else{
    print('Hello $name, you are $age years old');
  }
};

// Arrow function to retrive a value
String getGreetingWithNameAndAge5(String name, [int? age]) => 'Hello $name, you are $age years old';

// Callback functions, basically call another function in a function
void getUserData(String name, int age, Function callback){
  callback(name, age);
}