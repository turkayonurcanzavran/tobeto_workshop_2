import 'dart:math';

bool isArmstrongNumber(int number) {
  int originalNumber = number;
  int sum = 0;
  int power = number.toString().length;

  while (number > 0) {
    int digit = number % 10;
    sum += pow(digit, power).toInt();
    number ~/= 10;
  }

  return sum == originalNumber;
}

void main(List<String> args) {
  int number = 1923;
  if (isArmstrongNumber(number)) {
    print("$number bir Armstrong sayıdır");
  } else {
    print("$number bir Armstrong sayı değildir");
  }
}
