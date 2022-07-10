import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';
import 'dart:math';

class Task6 extends TaskInterface{
  @override
  num j = 2;
  void run() {
    String str = ' ';
    for (int i=0;i<=9;i++)
    {
     j = pow(2, i);
      str += j.toString() + ' ';
    }
    print(str);
  }

}