import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task4 extends TaskInterface{
  int j = 0;
  @override
  void run() {
    String str = ' ';
    int A = 5;
    for (int i=1;i<=A;i++)
    {
      j = j+i;
    }
    print(j);
  }

}