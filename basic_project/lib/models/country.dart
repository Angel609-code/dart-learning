import 'dart:convert';

import 'package:basic_project/models/country_name.dart';
import 'package:basic_project/models/currencies.dart';
import 'package:basic_project/models/flags.dart';

List<Country> countryFromJson(String str) => List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Country {
  CountryName name;
  Currencies currencies;
  Languages languages;
  List<double> latlng;
  List<String> borders;
  int population;
  Flags flags;

  Country({
    required this.name,
    required this.currencies,
    required this.languages,
    required this.latlng,
    required this.borders,
    required this.population,
    required this.flags,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: CountryName.fromJson(json["name"]),
        currencies: Currencies.fromJson(json["currencies"]),
        languages: Languages.fromJson(json["languages"]),
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        borders: List<String>.from(json["borders"].map((x) => x)),
        population: json["population"],
        flags: Flags.fromJson(json["flags"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "currencies": currencies.toJson(),
        "languages": languages.toJson(),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "borders": List<dynamic>.from(borders.map((x) => x)),
        "population": population,
        "flags": flags.toJson(),
      };
}

class Languages {
  String spa;

  Languages({
    required this.spa,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        spa: json["spa"],
      );

  Map<String, dynamic> toJson() => {
        "spa": spa,
      };
}
