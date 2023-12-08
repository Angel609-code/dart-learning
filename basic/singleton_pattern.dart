import 'classes/request_service.dart';

void main(){
  // The singleton pattern is a design pattern that restricts the instantiation of a class to one object.
  // If we create a new instance of a class that uses the singleton pattern, we will get the same instance (The last specified).

  // Class that uses the singleton pattern
  var requestService1 = RequestService();
  requestService1.postId = '1';

  var requestService2 = RequestService();
  requestService2.postId = '2';

  print(requestService1 == requestService2); // true

  print(requestService1.postId); // 2
}