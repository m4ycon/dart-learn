import 'dart:math';

DateTime add(final DateTime birthDate) {
  final DateTime afterAGigasecond =
      birthDate.add(Duration(seconds: pow(10, 9).toInt()));

  return afterAGigasecond;
}
