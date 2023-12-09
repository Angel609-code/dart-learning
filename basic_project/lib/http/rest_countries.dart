// as is used to give an alias to the library
import 'dart:convert' as convert;
import 'dart:developer';
import 'package:http/http.dart' as http;

// Custom packages

import 'package:basic_project/models/country.dart';
Future<List<Country>> getCountryByCode(String code) async {
  try {
    var url = Uri.parse('https://restcountries.com/v3.1/alpha/$code');
  
    var response = await http.get(url);
    
    if (response.statusCode == 200) {
      return countryFromJson(response.body);
    } else {
      log('Request failed with status: ${response.statusCode}.');
      return [];
    }
  } catch (e) {
    log('Request failed: $e.');
    return [];
  }
}