import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task16 extends TaskInterface {
  void run() {
    // вспомогательный метод
    double func(double x){
      return cos(pow(x, 5)) + pow(x, 4) - 345.3 * x - 23;
    }

    // решить уравнение
    double solve(double start, double end){
      if(end - start <= 0.001){
        return start;
      }
      double x = start + (end - start) / 2;
      if(x == end || x == start){
        return x;
      }

      if(func(start) * func(x) > 0){
        return solve(x, end);
      } else {
        return solve(start, x);
      }
    }
    double j = solve(0, 10);
    print(j);
  }
}