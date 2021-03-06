import 'dart:math';

import 'package:ft_md_101_dart/steps/ClassInstance.dart';
import 'package:ft_md_101_dart/steps/tasks/Taks2.dart';
import 'package:ft_md_101_dart/steps/tasks/Task1.dart';
import 'package:ft_md_101_dart/steps/tasks/Task10.dart';
import 'package:ft_md_101_dart/steps/tasks/Task11.dart';
import 'package:ft_md_101_dart/steps/tasks/Task12.dart';
import 'package:ft_md_101_dart/steps/tasks/Task13/Task13.dart';
import 'package:ft_md_101_dart/steps/tasks/Task14/Task14.dart';
import 'package:ft_md_101_dart/steps/tasks/Task15/Task15.dart';
import 'package:ft_md_101_dart/steps/tasks/Task16.dart';
import 'package:ft_md_101_dart/steps/tasks/Task17/Task17.dart';
import 'package:ft_md_101_dart/steps/tasks/Task18/Task18.dart';
import 'package:ft_md_101_dart/steps/tasks/Task19/Task19.dart';
import 'package:ft_md_101_dart/steps/tasks/Task3.dart';
import 'package:ft_md_101_dart/steps/tasks/Task4.dart';
import 'package:ft_md_101_dart/steps/tasks/Task5.dart';
import 'package:ft_md_101_dart/steps/tasks/Task6.dart';
import 'package:ft_md_101_dart/steps/tasks/Task7.dart';
import 'package:ft_md_101_dart/steps/tasks/Task8.dart';
import 'package:ft_md_101_dart/steps/tasks/Task9.dart';
import 'package:ft_md_101_dart/steps/utils/DartAbstractChild.dart';
import 'package:ft_md_101_dart/steps/utils/DartChild.dart';
import 'package:ft_md_101_dart/steps/utils/DartConstructor.dart';
import 'package:ft_md_101_dart/steps/utils/DartEnum.dart';
import 'package:ft_md_101_dart/steps/utils/DartExceptionExample.dart';
import 'package:ft_md_101_dart/steps/utils/DartFinal.dart';
import 'package:ft_md_101_dart/steps/utils/DartInterfaceChild.dart';
import 'package:ft_md_101_dart/steps/utils/DartMethod.dart';
import 'package:ft_md_101_dart/steps/utils/DartPackage.dart';
import 'package:ft_md_101_dart/steps/utils/DartSignature.dart';

class DartBase {
  void run() {
    print('DartBase: Hello World');

    // _stepConf();
    // _stepDataType();
    // _stepClassInstance();
    // _stepPackage();
    // _stepMethod();
    // _stepSignature();
    // _stepInheritance();
    // _stepConditionalOperator();
    // _stepArray();
    // _stepLoop();
    // _stepSwitch();
    // _stepConstructor();
    // _stepFinal();
    // _stepEnum();
    // _stepInterface();
    // _stepAbstract();
    // _stepException();
    // Task1().run();
    // Task2().run();
    // Task3().run();
    // Task4().run();
    // Task5().run();
    // Task6().run();
    // Task7().run();
    // Task8().run();
    // Task9().run();
    // Task10().run();
    // Task11().run();
    // Task12().run();
    // Task13().run();
    // Task14().run();
    // Task15().run();
    // Task16().run();
    // Task18().run();
    Task19().run();


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
      print('_stepConditionalOperator: $IntVar ????????????');
    } else {
      print('_stepConditionalOperator: $IntVar ????????????????');
    }
  }

  void _stepArray() {
    var array = [];
    array.add(1);
    array.add('String value');
    print('_stepArray: array');

    List<String> stringArray = [];
    stringArray = <String>[];

    stringArray.add("value");
    print(stringArray);

    stringArray.removeAt(0);
    print(stringArray);

    stringArray.add("value");
    stringArray.add("value");
    stringArray.add("value");
    stringArray.add("value");
    stringArray.forEach((element) {
      print('$element');
    });
  }

  void _stepLoop() {
    List<int> intArray = [];
    for (int i = 0; i < 100; i++) {
      intArray.add(Random().nextInt(100));
    }
    print(intArray);

    List<int> onlyEven = [];
    for (int el in intArray) {
      if (el % 2 == 0) {
        onlyEven.add(el);
      }
    }
    print(onlyEven);
  }

  void _stepSwitch() {
    var intVal = Random().nextInt(5);
    switch (intVal) {
      case 1:
        print('_stepSwitch: 1');
        break;
      case 2:
        print('_stepSwitch: 2');
        break;
      default:
        print('_stepSwitch: default - $intVal');
    }
  }

  void _stepConstructor() {
    DartConstructor dc = DartConstructor(1, "str");
    dc.run();
  }

  void _stepFinal() {
    DartFinal dc = DartFinal();
    dc.run();
  }

  void _stepEnum() {
    var status = DartEnum.NEW;
    print('_stepEnum: $status');
  }

  void _stepInterface() {
    DartInterfaceChild dlc = DartInterfaceChild();
    dlc.printMe();
  }

  void _stepAbstract() {
    DartAbstractChild dac = DartAbstractChild();
    dac.PrintMe();
  }

  void _stepException() {
    DartExceptionExample dee = DartExceptionExample();
    dee.run();
  }
}


