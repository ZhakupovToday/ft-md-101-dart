import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task11 extends TaskInterface {
  @override
  String str = '';

  void run() {
    int Flag = 0;
    for (int i = 2; i <= 100; i++) {
      Flag = 0;
      for (int j = 2; j <= i; j++) {
        if ((i % j == 0)) {
          Flag++;
        }
      }
      if (Flag == 1) {
        str += i.toString() + ' ';
      }
    }
    print(str);
  }
}
