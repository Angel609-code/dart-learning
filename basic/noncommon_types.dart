import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'dart:io';

void main() async {
  iteratorType(queueType());

  enums();

  // Future
  print('Before future');
  print(await timeout);
  print('After future');

  // Future with then
  print('Before future with then');
  timeout.then((value) => print(value));
  print('After future with then');

  // If a function returns a value, and another function can use the same returned value, then we can use a future
  timeout.then(print);

  // Future to read a local file
  print('Before read a local file');
  readPersonFile();

  // Print the current directory
  printCurrentDirectory();

  readPersonFileAsync();

  // Catching errors
  File file = File('assets/persons.txt');
  catchErrorWhenReadingFile(file);

  // Using then to catch errors
  // Shows an handled exception
  file.readAsString().then(print).catchError((e) => log(e));

  // Streams
  streams();
}

// Queue, is util when we need to add and remove elements
Queue queueType(){
  // The queue type is in the dart:collection package
  Queue<int> queue = Queue();

  queue.addAll([10, 20, 30, 40, 50]);

  // print('Is queue: ${queue is Queue}');
  return queue;
}

// Iterator that uses a queue
// The iterator is used to iterate over the elements of the queue
void iteratorType(Queue queue){
  Iterator i = queue.iterator;

  while(i.moveNext()){
    print(i.current);
  }

  // An iterable is an object that can be iterated over
  // can we regconize an iterable in the console when we saw elements between parenthesis
  // runtimeType is used to get the type of an object
  print('Iterable ${(1, 2, 2).runtimeType}');
} 

// Enums
void enums(){
  AudioVolume volume = AudioVolume.medium;

  switch(volume){
    case AudioVolume.mute: print('mute'); break;
    case AudioVolume.low: print('low'); break;
    case AudioVolume.medium: print('medium'); break;
    case AudioVolume.high: print('high'); break;
  }
}

enum AudioVolume{
  mute,
  low,
  medium,
  high
}

// Future in dart
// A future is a value that will be available at some time in the future
// A future is used to represent a potential value, or error, that will be available at some time in the future
Future timeout = Future.delayed(Duration(seconds: 1), () => '1 seconds later');

// Reading a local file on our project
void readPersonFile() async {
  // OSX and Linux
  String contents = await File('assets/person.txt').readAsString();

  // Windows we need to use backslash if we don't specify the raw string with r'' we need to use double backslash
  // String contents = await File(r'C:\Users\user\Documents\person.txt').readAsString();

  // Syncronic way
  // String contents = File('assets/person.txt').readAsStringSync();
  print(contents);
}

// Print the current directory
void printCurrentDirectory() async {
  Directory current = Directory.current;
  print(current.path);

  // List the contents of the current directory
  List contents = current.listSync();
  print(contents);
}

// Async and await
// Async and await are used to handle futures
// Async is used to mark a function as asynchronous
// Await is used to wait for a future to complete
// An async function should be used in another async function or in a function that returns a future
void readPersonFileAsync() async {
  String contents = await File('assets/person.txt').readAsString();
  print(contents);
}

// Catching errors
// We can use try and catch to catch errors
// We can use on to catch specific errors
// We can use rethrow to rethrow an error
// We can use finally to run code after an error
void catchErrorWhenReadingFile(File file){
  try{
    file.readAsStringSync();
  } on FileSystemException catch(e){
    // Handle the exception
    log('File system exception ${e.message}');
  } on IOException catch(e){
    // Handle the exception
    log('IO exception $e');
  } catch(e){
    // Handle all other exceptions
    log('Unknown exception $e');
  } finally{
    // Code that will always run
  }
}

// Streams
// A stream is a sequence of asynchronous events
// A stream can be single subscription or broadcast
// A stream is used to deliver data to a program as it is available
// A stream is like a pipe with water flowing through it
// A stream is a source of asynchronous events
void streams(){
  // Dynamically typed stream but we can specify the types we will manage
  // This controller only can be used to listen to one stream
  final streamController = StreamController();

  // Listens multiples streams
  // final streamController = StreamController.broadcast();

  streamController.stream.listen(
    (event) => print('Starting to listen to stream $event'),
    onError: (error) => print('Error: $error'),
    cancelOnError: true /* Cancel the stream when an error occurs */,
    onDone: () => print('Done'),
  );

  // Add an event to the stream
  streamController.sink.add('My first event');

  streamController.sink.add(123);

  // Add error
  // The onError event will be called
  streamController.sink.addError('This is an error');

  // Close the stream
  // The onDone event will be called
  streamController.close();
}