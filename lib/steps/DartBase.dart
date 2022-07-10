import 'package:ft_md_101_dart/steps/ClassInstance.dart';
import 'package:ft_md_101_dart/steps/utils/DartMethod.dart';
import 'package:ft_md_101_dart/steps/utils/DartPackage.dart';

class DartBase {
  void run(){
    print('DartBase: Hello World');

    _stepConf();
    _stepDataType();
    _stepClassInstance();
    _stepPackage();
    _stepMethod();
  }

  void _stepConf(){
    print('_stepConf: This step 1');
  }

  void _stepDataType(){
    String str = 'str';
    int intVar = 1;
    double doubleVar = 1.8;
    
    print('_stepDataType: $str');
    print('_stepDataType: $intVar');
    print('_stepDataType: $doubleVar');

    double sum = intVar + doubleVar;
    print('_stepDataType: $sum');


    DartBase db = DartBase();
    db._stepConf();
  }


  void _stepClassInstance(){
    ClassInstance ci = ClassInstance();
    ci.run();
  }

  void _stepPackage(){
    DartPackage dp = DartPackage();
    dp.run();
  }

  void _stepMethod(){
    var dn = DartMethod();
    dn.run();
  }
}