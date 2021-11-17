class Hamming {
  int distance(String a, String b) {
    int dist = 0;
    a.runes.toList().asMap().forEach((index, value) {
      if (b.codeUnitAt(index) == value) dist++;
    });

    return dist;
  }
}
