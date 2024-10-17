class Point {
  final double _x;
  final double _y;

  const Point(this._x, this._y);

  Point translate(double dx, double dy) {
    return Point(_x + dx, _y + dy);
  }

  @override
  String toString() => 'Point($_x, $_y)';
}

void main() {
  final point1 = Point(10, 15);
  final point2 = point1.translate(5, 5);

  print(point1); 
  print(point2); 
}