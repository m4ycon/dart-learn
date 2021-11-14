import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int n) {
    int squareSum = 0;
    for (int i = 1; i <= n; i++) {
      squareSum += i;
    }

    return pow(squareSum, 2).toInt();
  }

  int sumOfSquares(int n) {
    int sumSquares = 0;
    for (int i = 1; i <= n; i++) {
      sumSquares += pow(i, 2).toInt();
    }

    return sumSquares;
  }

  int differenceOfSquares(int n) {
    return this.squareOfSum(n) - this.sumOfSquares(n);
  }
}
