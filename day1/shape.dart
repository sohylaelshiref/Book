abstract class Shape {
  double area();
}

class Circle extends Shape {
  Circle({required this.radius});

  final double radius;

  @override
  double area() {
    return 3.24 * radius * radius;
  }
}

class Rectangle extends Shape {
  Rectangle({required this.height, required this.width});

  final double width;
  final double height;

  @override
  double area() {
    return width * height;
  }
}

double calculateArea(Shape shape) {
  return shape.area();
}