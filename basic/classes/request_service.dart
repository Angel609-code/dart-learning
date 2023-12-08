// Class that uses the singleton pattern
class RequestService {
  String url = 'https://jsonplaceholder.typicode.com/posts/1';
  String postId = '1';

  // Singleton pattern
  static final RequestService _instance = RequestService._internal();

  factory RequestService() {
    return _instance;
  }

  RequestService._internal();

  // // Method to get data from a web service
  // Future<String> getData() async {
  //   final response = await http.get('https://jsonplaceholder.typicode.com/posts/1');
  //   return response.body;
  // }
}