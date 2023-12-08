// Class with factory
class Rectangle {
  int rectangleBase;
  int height;
  int area;
  String type;

  // Factory constructor
  // It can return an instance of the class or a subclass
  // It can return an instance of a different class
  // It can return null
  factory Rectangle(int rectangleBase, int height) {
    if (rectangleBase == height) {
      return Rectangle.square(rectangleBase);
    } else {
      return Rectangle.rectangle(rectangleBase, height);
    }

  }

  Rectangle.square(int rectangleBase) :
    this.rectangleBase = rectangleBase,
    this.height = rectangleBase,
    this.area = rectangleBase * rectangleBase,
    this.type = 'Square';

  Rectangle.rectangle(int rectangleBase, int height) :
    this.rectangleBase = rectangleBase,
    this.height = height,
    this.area = rectangleBase * height,
    this.type = 'Rectangle';

  @override
  String toString() => 'Base: $rectangleBase, Height: $height, Area: $area, Type: $type';
}