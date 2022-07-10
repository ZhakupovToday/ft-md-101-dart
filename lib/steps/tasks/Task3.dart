import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task3 extends TaskInterface{
  @override
  void run() {
   String str = ' ';
   for (int i=1;i<=10;i++)
     {
       int j = i*3;
       str += j.toString() + ' ';
     }
   print(str);
  }

}