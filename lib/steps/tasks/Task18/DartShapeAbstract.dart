import 'dart:core';
import 'dart:math';

abstract class Shape {
  double getVolume();
}

abstract class SolidOfRevolution extends Shape {
  double? radius;

  SolidOfRevolution(double radius) {
    this.radius = radius;
  }

  double? getRadius() {
    return radius;
  }
}

class Ball extends SolidOfRevolution {
  // конкретный класс

  @override
  double getVolume() {
    return (pi * pow(radius!, 3) * 4 / 3);
  }

  Ball(double radius) : super(radius) {}
}

class Cylinder extends SolidOfRevolution {
  // конкретный класс
  double? height;

  Cylinder(double radius, double height) : super(radius) {
    this.height = height;
  }

  @override
  double getVolume() {
    return (pi * radius! * radius! * height!);
  }
}

class Pyramid extends Shape {
  double? height;
  double? s; // площадь основания

  Pyramid(double height, double s) {
    this.height = height;
    this.s = s;
  }

  @override
  double getVolume() {
    // TODO: implement getVolume
    return (height! * s! * 4 / 3);
  }
}

class Box extends Shape {
  List<Shape> shapes = [];
  double? available;
  double? volume;

  Box(double available) {
    this.available = available;
    this.volume = available;
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

  @override
  double getVolume() {
    // TODO: implement getVolume
    return volume!;
  }
}
