int reverseNumber(int number) {
  int reversedNumber = 0;
  while (number > 0) {
    reversedNumber = (reversedNumber * 10) + (number % 10);
    number = number ~/ 10;
  }
  return reversedNumber;
}

void main() {
  int num = 12345;
  int reversedNum = reverseNumber(num);
  print('Original number: $num');
  print('Reversed number: $reversedNum');
  stringReversing("Binshad");
}

void stringReversing(String arr) {
  List<String> arrr = arr.split('');
  int leftIndex = 0;
  int rightIndex = arr.length-1;
  while (rightIndex > leftIndex) {
    String temp = arrr[rightIndex];
    arrr[rightIndex] = arrr[leftIndex];
    arrr[leftIndex] = temp;
    rightIndex--;
    leftIndex++;
  }
print(arrr.join());
}
