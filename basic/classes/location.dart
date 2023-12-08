// Class with const constructor
class Location {
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);

  @override
  String toString() => 'Lat: $lat, Lng: $lng';
}