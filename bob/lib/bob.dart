class Bob {
  String response(String phrase) {
    if (phrase.length == 0) return 'Fine. Be that way!';

    final bool yell = this.allCapitals(phrase);
    if (phrase.endsWith('?')) {
      return yell ? 'Calm down, I know what I\'m doing!' : 'Sure.';
    }
    if (yell) return 'Whoa, chill out!';

    return 'Whatever.';
  }

  bool allCapitals(String s) {
    return !s.runes
        .any((ch) => ch.compareTo(97) >= 0 && ch.compareTo(122) <= 0);
  }
}
