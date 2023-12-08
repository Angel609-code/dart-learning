// Class with final properties
class Square {
  // The finals doesn't have setters
  final int side;
  final int area;

  Square(this.side) : area = side * side;

  @override
  String toString() => 'Side: $side, Area: $area';
}