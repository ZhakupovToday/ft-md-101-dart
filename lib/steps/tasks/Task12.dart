import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task12 extends TaskInterface {
  @override
  List<int> array = [1, 2, 3, 4, 5, 6, 3, 5, 7, 4, 1];
  int A = 3;

  void run() {
for (int i = 0; i < array.length; i++)
  {
    if (array[i] == A)
      {
        array.removeAt(i);
      }
  }
print(array);
  }
}
