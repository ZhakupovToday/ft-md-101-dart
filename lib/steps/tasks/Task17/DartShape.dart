import 'dart:core';
import 'dart:math';

class Shape {
  double? volume;

  Shape(double volume) {
    this.volume = volume;
  }

  double getVolume() {
    return volume!;
  }
}

class SolidOfRevolution extends Shape {
  double? radius;

  SolidOfRevolution(double volume, double radius) : super(volume) {
    this.radius = radius;
  }

  double? getRadius() {
    return radius;
  }
}

class Ball extends SolidOfRevolution {
  // конкретный класс

  Ball(double radius) : super(pi * pow(radius, 3) * 4 / 3, radius) {}
}

class Cylinder extends SolidOfRevolution {
  // конкретный класс
  double? height;

  Cylinder(double radius, double height)
      : super(pi * radius * radius * height, radius) {
    this.height = height;
  }
}

class Pyramid extends Shape {
  double? height;
  double? s; // площадь основания

  Pyramid(double height, double s) : super(height * s * 4 / 3) {
    this.height = height;
    this.s = s;
  }
}

class Box extends Shape {
  List<Shape> shapes = [];
  double? available;

  Box(double available) : super(available) {
    this.available = available;
  }

  bool add(Shape shape) {
    if (available! >= shape.getVolume()) {
      shapes.add(shape);
      available = available! - shape.getVolume();
      return true;
    } else {
      return false;
    }
  }
}
