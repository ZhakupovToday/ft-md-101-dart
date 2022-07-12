import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

import 'DartShapeAbstract.dart';

class Task18 extends TaskInterface {
  void run() {
    Ball ball = Ball(10);
    Cylinder cylinder = Cylinder(3, 3);
    Pyramid pyramid = Pyramid(5, 5);

    Box box = Box(1000);

    bool BallCheck = true;
    BallCheck = box.add(ball);
    print(BallCheck);
    BallCheck = box.add(cylinder);
    print(BallCheck);
    BallCheck = box.add(pyramid);
    print(BallCheck);
  }
}
