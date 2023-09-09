import 'dart:math';

// FIRST METHOD
// abstract class Shape {
//   num get area;
// }

// class Circle implements Shape {
//   final num radius;
//   Circle(this.radius);
//   num get area => pi * pow(radius, 2);
// }

// class Square implements Shape {
//   final num side;
//   Square(this.side);
//   num get area => pow(side, 2);
// }

// void main(List<String> args) {
//   final circle = Circle(2);
//   final square = Square(2);
//   print(circle.area);
//   print(square.area);
// }

// SECOND METHOD
abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle')
      return Circle(2);
    else if (type == 'square') return Square(2);
    throw 'Can\'t create $type';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

void main(List<String> args) {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}
