import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task8 extends TaskInterface {
  @override
  void run() {
    String str = '';
    var intArray = [];
    for (int i = 0; i <= 1; i++) {
      intArray.add(1);
      str += intArray[i].toString() + ' ';
    }

    for (int i = 3; i <= 11; i++) {
      intArray.add(Random().nextInt(1));
    }

    for (int i = 2; i <= 10; i++) {
      intArray[i] = intArray[i - 1] + intArray[i - 2];
      str += intArray[i].toString() + ' ';
    }
    print(str);
  }
}
