import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task7 extends TaskInterface {
  @override
  String str = '';
  void run() {
    for (int i = 1; i <= 3; i++) {
      for (int i = 1; i <= 5; i++) {
        str += '*' + ' ';
      }
      print(str);
      str = '';
    }
  }
}
