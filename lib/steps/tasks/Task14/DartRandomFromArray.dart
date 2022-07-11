import 'dart:math';

class RandomFromArray {
  List<int> extended_values = [];
  List<int> values = [];
  List<int> weights = [];

  RandomFromArray(this.extended_values, this.values, this.weights);
}
int RandomArray(List<int> values, List<int> weights) {
  List<int> ext_val = [];
  for (int i = 0; i < values.length; i++) {
    int one = values[i];
    int j = weights[i];
    for (int i = 0; i < j; i++) {
      ext_val.add(one);
    }
  }
  var random = Random();
  var IntVar = random.nextInt(ext_val.length);
  int result = ext_val[IntVar];
  return result;

}


