class CountryName {
  String common;
  String official;

  CountryName({
    required this.common,
    required this.official,
  });

  factory CountryName.fromJson(Map<String, dynamic> json) => CountryName(
        common: json["common"],
        official: json["official"],
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
      };
}