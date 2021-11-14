// Put your code here
var points = {
  'aeioulnrst': 1,
  'dg': 2,
  'bcmp': 3,
  'fhvwy': 4,
  'k': 5,
  'jx': 8,
  'qz': 10,
};

int score(String word) {
  var nLetters = Map<String, int>();

  word.toLowerCase().runes.forEach((int rune) {
    var letter = new String.fromCharCode(rune);
    nLetters.update(letter, (value) => value + 1, ifAbsent: () => 1);
  });

  int sum = 0;
  nLetters.forEach((key, value) {
    String targetKey = points.keys.firstWhere((e) => e.contains(key));
    sum += points[targetKey]! * value;
  });

  return sum;
}

void main() {
  print(score('CABBAGE'));
}
