import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task10 extends TaskInterface {
  @override
  void run() {
    List<int> Array = [];
    for (int i = 0; i <= 15; i++) {
      Array.add(Random().nextInt(10));
    }
    for (int j = 1; j < Array.length-1; j++)
    {
      bool Flag =  false;
      for (int i = 0; i < Array.length - j; i++) {
        if (Array[i] > Array[i + 1]) {
          int temp = Array[i+1];
          Array[i+1] = Array[i];
          Array[i] = temp;
          Flag = true;
        }
      }
    }
    print(Array);
  }
}
