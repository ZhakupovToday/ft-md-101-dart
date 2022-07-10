import 'dart:math';

import 'package:ft_md_101_dart/steps/ClassInstance.dart';
import 'package:ft_md_101_dart/steps/utils/DartChild.dart';
import 'package:ft_md_101_dart/steps/utils/DartMethod.dart';
import 'package:ft_md_101_dart/steps/utils/DartPackage.dart';
import 'package:ft_md_101_dart/steps/utils/DartSignature.dart';

class DartBase {
  void run() {
    print('DartBase: Hello World');

    _stepConf();
    _stepDataType();
    _stepClassInstance();
    _stepPackage();
    _stepMethod();
    _stepSignature();
    _stepInheritance();
    _stepConditionalOperator();
  }

  void _stepConf() {
    print('_stepConf: This step 1');
  }

  void _stepDataType() {
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


  void _stepClassInstance() {
    ClassInstance ci = ClassInstance();
    ci.run();
  }

  void _stepPackage() {
    DartPackage dp = DartPackage();
    dp.run();
  }

  void _stepMethod() {
    var dn = DartMethod();
    dn.run();
  }

  void _stepSignature() {
    var db = DartSignature("first var", "second var");
    db.run();
    db.setAndRun("first after set", "second after set");

    db.first = "first after set";
    db.second = "second after set";
    db.run();
  }

  void _stepInheritance() {
    var dc = DartChild();
    dc.run();
  }

  void _stepConditionalOperator() {
    var random = Random();
    var IntVar = random.nextInt(10);
    var maxVar = 5;

    print('_stepConditionalOperator: intVar is $IntVar');

    if (IntVar > maxVar) {
      print('_stepConditionalOperator: $IntVar > $maxVar');
    }
    if (IntVar < maxVar) {
      print('_stepConditionalOperator: $IntVar < $maxVar');
    }
    if (IntVar != maxVar) {
      print('_stepConditionalOperator: $IntVar != $maxVar');
    }
    if (IntVar == maxVar) {
      print('_stepConditionalOperator: $IntVar == $maxVar');
    }
    if (IntVar % 2 == 0) {
      print('_stepConditionalOperator: $IntVar четное');
    }else {
      print('_stepConditionalOperator: $IntVar нечетное');
    }
    }
  }
