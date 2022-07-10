import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task2 extends TaskInterface{
  @override

  void run() {
    String str = '';
    for (int i=5; i>=1;i--)
    {
      str += i.toString() + ' ';
    }
    print(str);
  }

}