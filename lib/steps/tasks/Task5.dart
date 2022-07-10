import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task5 extends TaskInterface{
  @override
  int j = 7;
  void run() {
    String str = ' ';
    for (int i=0;i<=14;i++)
    {
      j = 7*i;
      str += j.toString() + ' ';
    }
    print(str);
  }

}