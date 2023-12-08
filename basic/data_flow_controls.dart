import 'dart:developer';
import 'dart:io';

void main(){
  log('Data Controls');

  // if
  ifControl();

  // if else if
  ifElseIfControl();

  // switch
  switchControl();

  // for in
  forInControl();

  // while
  whileControl();

  // do while
  doWhileControl();

  // break
  breakControl();

  // continue
  continueControl();

  // assert
  assertControl();

  // While loop
  whileLoop();

  // Do while loop
  doWhileLoop();

  // Getting the user input
  // import 'dart:io';
  // Writeln is used to print the text in the same line
  stdout.writeln('Enter your name: ');

  // Reading the user input
  String? name = stdin.readLineSync();

  // Printing the user input
  stdout.writeln('Your name is $name\n');

  // If Else satement
  stdout.writeln('Enter your age: ');
  int? age = int.tryParse(stdin.readLineSync()!);

  ifElseControl(age);

  // For loop
  stdout.writeln('Count on Zero to: ');
  int? to = int.tryParse(stdin.readLineSync()!);

  forControl(to);

  // Outer and inner loops
  outerAndInnerLoops();

  for (var i = 10; i <= 1; i++) {
    print('Hello World');
  }
}

// if
void ifControl(){
  int a = 10;
  int b = 20;

  if(a < b){
    log('a is less than b.\n');
  }
}

// if else
void ifElseControl(int? age){
  if (age == null) {
    stdout.writeln('There is something wrong.\n');
  }else if(age > 18){
    stdout.writeln('Your age is greater than 18.\n');
  }else if(age == 18){
    stdout.writeln('Your age is equal to 18.\n');
  }else{
    stdout.writeln('Your age is less than 18.\n');
  }
}

// if else if
void ifElseIfControl(){
  int a = 10;
  int b = 20;

  if(a > b){
    log('a is greater than b');
  }else if(a < b){
    log('a is less than b');
  }else{
    log('a is equal to b');
  }
}

// switch
void switchControl(){
  int a = 10;

  switch(a){
    case 10:
      log('a is 10');
      break;
    case 20:
      log('a is 20');
      break;
    default:
      log('a is not 10 or 20');
  }
}

// for
void forControl(int? to){
  if (to == null) {
    stdout.writeln('There is something wrong.\n');
    return;
  }
  for(int i = 0; i < to; i++){
    stdout.writeln('$i');
  }
  stdout.writeln('');
}

// for in
void forInControl(){
  List<int> numbers = [1,2,3,4,5,6,7,8,9,10];

  for(int number in numbers){
    log('For In: $number');
  }
}

// while
void whileControl(){
  int i = 0;
  
  while(i < 10){
    log('While: $i');
    i++;
  }
}

// do while
void doWhileControl(){
  int i = 0;

  do{
    log('Do While: $i');
    i++;
  }while(i < 10);
}

// break
void breakControl(){
  for(int i = 0; i < 10; i++){
    if(i == 5){
      break;
    }
    log('Break: $i');
  }
}

// continue
void continueControl(){
  for(int i = 0; i < 10; i++){
    if(i == 5){
      continue;
    }
    log('Continue: $i');
  }
}

// assert
void assertControl(){
  int a = 10;
  int b = 20;

  assert(a < b);
}

// While loop
void whileLoop(){
  int i = 0;

  while(i < 10){
    log('While: $i');
    i++;
  }
}

// Do while loop
void doWhileLoop(){
  int i = 0;

  do{
    log('Do While: $i');
    i++;
  }while(i < 10);
}

// Outer and inner loops
void outerAndInnerLoops(){
  // The naming of the label is up to you
  // This label is used to name the outer loop
  outerlopp:
  for(int i = 0; i < 10; i++){
    innerloop:
    for(int j = 0; j < 10; j++){
      log('Outer: $i Inner: $j');

      if(i == 5 && j == 5){
        break outerlopp;
      }

      if(i == 3 && j == 3){
        continue innerloop;
      }
    }
  }
}