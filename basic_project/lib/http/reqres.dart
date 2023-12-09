// as is used to give an alias to the library
import 'dart:convert' as convert;
import 'dart:developer';
import 'package:http/http.dart' as http;

// Custom packages
import 'package:basic_project/models/reqres_users_request.dart';

Future<ReqresUsersRequest> getUsers(int page) async {
  try {
    var url = Uri.parse('https://reqres.in/api/users?page=$page');
  
    var response = await http.get(url);
    
    if (response.statusCode == 200) {
      var postRequest = ReqresUsersRequest.fromJson(convert.jsonDecode(response.body));
      return  postRequest;
    } else {
      log('Request failed with status: ${response.statusCode}.');
      return ReqresUsersRequest();
    }
  } catch (e) {
    log('Request failed: $e.');
    return ReqresUsersRequest();
  }
}