class WordCount {
  Map<String, int> countWords(String phrase) {
    var counter = Map<String, int>();

    phrase.split(RegExp(r'(\t|\n|\s)')).forEach((element) {
      counter.update(element, (value) => value + 1, ifAbsent: () => 1);
    });

    return counter;
  }
}
