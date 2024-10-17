class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}

class Shape {
  final Point leftBottom;
  final double width;
  final double height;
  final String? backgroundColor;

  Shape({
    required this.leftBottom,
    required this.width,
    required this.height,
    this.backgroundColor,
  });

  Point get rightTop => Point(leftBottom.x + width, leftBottom.y + height);
}