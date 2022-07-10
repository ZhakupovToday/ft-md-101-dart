import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task9 extends TaskInterface {
  @override
  void run() {
    List<double> Array = [];
    for (int i = 0; i <= 15; i++) {
      Array.add(Random().nextDouble());
    }
    double max = Array[0];
    double min = Array[0];
    double middle = 0;

    print('Массив: $Array');
    for (int i = 0; i < Array.length; ++i) {
      if (Array[i] > max) {
        max = Array[i];
      }
      if (Array[i] < min) {
        min = Array[i];
      }
      middle = middle + Array[i];

    }
    middle = middle/Array.length;
    print('Максимальное значение: $max');
    print('Минимальное значение: $min');
    print('Среднее значение: $middle');
  }
}