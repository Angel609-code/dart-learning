import 'package:basic_project/http/reqres.dart';
import 'package:basic_project/http/rest_countries.dart';

void main(List<String> arguments) async {
  var reqresUsersRequest = await getUsers(1);

  if (reqresUsersRequest.data == null) {
    print('No data');
  } else {
    for (var user in reqresUsersRequest.data!) {
      print('User: ${user.firstName} ${user.lastName}');
    }
  }

  // Printing Colombian country
  print('===========================');
  var country = await getCountryByCode('co');
  
  if (country.isEmpty) {
    print('No data');
  } else {
    print('Country: ${country[0].name.common}');
    print('Population: ${country[0].population}');
    // Printing borders
    print('Borders:');
    if (country[0].borders.isEmpty) {
      print('----> No data');
    }else {
      for (var border in country[0].borders) {
        print('----> $border');
      }
    }
    // Printing languages
    print('Languages:');
    print('----> ${country[0].languages.spa}');
    print('Latitud: ${country[0].latlng[0]}');
    print('Longitud: ${country[0].latlng[1]}');
    print('Currency: ${country[0].currencies.cop.name}');
    print('Flag: ${country[0].flags.svg}');
  }
  print('===========================');
}
