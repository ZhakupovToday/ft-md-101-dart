import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

import 'DartVector.dart';

class Task13 extends TaskInterface {
  @override
  void run() {
    Vector db = Vector(1, 2, 3);
    Vector ds = Vector(3, 5, 7);
    // double len = db.length();
    // print(len);
    // double scalar = db.scalarProduct(ds);
    // print(scalar);
// db.crossProduct(ds);
//db.cosVector(ds);
// db.vector_add(ds);
//db.vector_sub(ds);
    List<Vector> ArrayRandom = Vector_Array(5);
    print(ArrayRandom);
  }
}
