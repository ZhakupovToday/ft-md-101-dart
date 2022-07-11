import 'dart:math';

class RandomFromArray {
  List<int> extended_values = [];
  List<int> values = [];
  List<int> weights = [];

  RandomFromArray(this.extended_values, this.values, this.weights);
}

List<int> RandomArray(List<int> values, List<int> weights, List<int> ext_val) {
  for (int i = 0; i < values.length; i++) {
    int one = values[i];
    int j = weights[i];
    for (int i = 0; i < j; i++) {
      ext_val.add(one);
    }
  }

  return ext_val;
}

int getRandom(List<int> Array){
  int j = 0;
  return j;
}
