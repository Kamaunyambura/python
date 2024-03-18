int addNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print('\n');

  String userInput = 'apple';
  switch (userInput) {
    case 'apple':
      print('You entered apple');
      break;
    case 'banana':
      print('You entered banana');
      break;
    default:
      print('You entered something else');
  }

  print('\n');

  int j = 20;
  while (j >= 10) {
    print(j);
    j--;
  }

  print('\n');

  int number = 15;
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }

  print('\n');

  List<int> numbers = [5, 12, 3, 8, 18];
  int largest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }
  print('Largest number in the list: $largest');
  print('\n');

  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (error) {
    print('Error: $error');
  }
}
