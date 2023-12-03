import 'dart:developer';

void main(){
  log('Operators');

  // Arithmetic Operators
  // +, -, *, /, %, ++, --
  addition();
  substraction();
  multiplication();
  division();
  modulus();
  increment();
  decrement();
  commonDivision();
  negationalOperator();
  additionAndSubstractionAssignations();
  assignationsWhenNulls();
  teranaryOperator();
  typeTestOperators();
  conditionalForNulls();
}

// Addition
void addition(){
  int a = 10;
  int b = 20;
  int c = a + b;
  log('Addition: $c');
}

// Substraction
void substraction(){
  int a = 10;
  int b = 20;
  int c = a - b;
  log('Substraction: $c');
}

// Multiplication
void multiplication(){
  int a = 10;
  int b = 20;
  int c = a * b;
  log('Multiplication: $c');
}

// Division
void division(){
  int a = 10;
  int b = 20;

  // The result of a division is a double
  double c = a / b;
  log('Division: $c');
}

// Modulus
void modulus(){
  int a = 10;
  int b = 20;
  int c = a % b;
  log('Modulus: $c');
}

// Increment
void increment(){
  int a = 10;
  int a2 = 10;

  int b = a++; // Post Increment
  log('Increment A: $b $a'); // 10 11
  
  int b2 = ++a2; // Pre Increment
  log('Increment A: $b2 $a2'); // 11 11
}

// Decrement
void decrement(){
  int a = 10;
  int a2 = 10;

  int b = a--; // Post Decrement
  log('Decrement A: $b $a'); // 10 9
  
  int b2 = --a2; // Pre Decrement
  log('Decrement A: $b2 $a2'); // 9 9
}

// Common division
void commonDivision(){
  // The common division is the division without the decimal part
  int a = 10;
  int b = 20;
  int c = a ~/ b;
  log('Common Division: $c');
}

// Negational Operator
void negationalOperator(){
  // The negational operator is used to change the sign of a number
  int a = 10;
  int b = -a;
  log('Negational Operator: $b');
}

// Addition and Substraction assignations
void additionAndSubstractionAssignations(){
  int a = 10;
  int b = 20;

  // Addition assignation
  a += b; // a = a + b
  log('Addition Assignation: $a');

  // Substraction assignation
  a -= b; // a = a - b
  log('Substraction Assignation: $a');
}

// Assignations when nulls
void assignationsWhenNulls(){
  int a = 10;
  int? b = null;

  // Assignation when null
  a ??= 20; // a = a ?? 20
  log('Assignation when null: $a');

  b ??= 20; // b = b ?? 20
  log('Assignation when null: $b');
}

// Teranary Operator
void teranaryOperator(){
  // The teranary operator is used to make a condition
  int a = 10;
  int b = 20;

  // Teranary Operator
  int c = a > b ? a : b;
  log('Teranary Operator: $c');
}

// Type test operators
void typeTestOperators(){
  // The type test operators are used to check the type of a variable
  int a = 10;
  String b = 'Hello';

  // is
  bool c = a is int;
  log('Is: $c');

  // is!
  bool d = b is! int;
  log('Is!: $d');
}

// Conditional for nulls
void conditionalForNulls(){
  // The conditional for nulls is used to check if a variable is null
  int? a = null;
  int b = 20;

  // ??
  int c = a ?? b;
  log('Conditional for nulls: $c');
}