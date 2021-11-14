import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    int coeficient = number.toString().length;
    int verifier = 0;
    number.toString().runes.forEach((element) {
      int digit = int.parse(String.fromCharCode(element));
      verifier += pow(digit, coeficient).toInt();
    });

    return verifier == number;
  }
}
