import 'package:ft_md_101_dart/steps/tasks/Task14/DartRandomFromArray.dart';
import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task14 extends TaskInterface {
  @override
  void run() {
    List<int> values = [1,2,3];
    List<int> weights = [1,2,10];
    int Array = RandomArray(values, weights);
    print(Array);
  }
}
