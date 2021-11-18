class Raindrops {
  String convert(final int drops) {
    String answer = '';
    answer += drops % 3 == 0 ? 'Pling' : '';
    answer += drops % 5 == 0 ? 'Plang' : '';
    answer += drops % 7 == 0 ? 'Plong' : '';

    return answer.length > 0 ? answer : drops.toString();
  }
}
