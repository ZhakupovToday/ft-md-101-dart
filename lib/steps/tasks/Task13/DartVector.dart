import 'dart:math';

class Vector {
  //три поля
  double? x;
  double? y;
  double? z;

  //конструктор
  Vector(this.x, this.y, this.z);

  double length() {
    double j = (sqrt(x! + y! + z!));
    return j;
  }

  double scalarProduct(Vector vector) {
    double j = (x! * vector.x! + y! * vector.y! + z! * vector.z!);
    return j;
  }

  void crossProduct(Vector vector) {
    double a = y! * vector.z! - z! * vector.y!;
    double b = (x! * vector.z! - z! * vector.x!) * (-1);
    double c = x! * vector.y! - y! * vector.x!;
    print('($a,$b,$c)');
  }

  void cosVector(Vector vector) {
    double scalar_product = scalarProduct(vector);
    double len = length();
    double vector2_length = vector.length();
    double result = scalar_product / (len * vector2_length);
    print(result);
  }

  void vector_add(Vector vector) {
    double a = x! + vector.x!;
    double b = y! + vector.y!;
    double c = z! + vector.z!;

    print('($a,$b,$c)');
  }

  void vector_sub(Vector vector) {
    double a = x! - vector.x!;
    double b = y! - vector.y!;
    double c = z! - vector.z!;

    print('($a,$b,$c)');
  }
}

List<Vector> Vector_Array(int N) {
  List<Vector> vectorArr = [];
  for (int i = 0; i < N; i++) {
    vectorArr.add(Vector(
        Random().nextDouble(), Random().nextDouble(), Random().nextDouble()));
  }
  return vectorArr;
}
