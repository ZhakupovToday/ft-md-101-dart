import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task15 extends TaskInterface {
  @override
  void run() {
    List<int> array = [];
    for (int i = 0; i < 1000000; i++) {
      array.add(Random().nextInt(1000000));
    }
    int j = 10;
    //подбор
    // int result = enumeration(array, j);
    //  print('Входит ли число: $result');

//бинарный поиск
    int s = bisek(array, j);
    print('Входит ли число: $s');
  }

//перебор
  int enumeration(List<int> array, int key) {
    for (int i = 0; i < array.length; i++) {
      if (array[i] == key) {
        return 1;
      }
    }
    return -1;
  }

  //бинарный поиск
  int bisek(List<int> array, int number) {
    int middle;
    int first = 0;
    int last = array.length - 1;
    array.sort();

    while (first <= last) {
      middle = first + ((last - first) ~/ 2);
      if (array[middle] == number) {
        return 1;
      } else {
        if (array[middle] < number) {
          first = middle + 1;
        } else {
          last = middle - 1;
        }
      }
    }
    return -1;
  }
}
