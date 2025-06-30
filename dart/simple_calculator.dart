import 'dart:io';

void main(List<String> args) {
  // A simple calculator that takes two numbers from the user, performs calculations, and throws an error for invalid operations
  print('=====SIMPLE CALCULATOR======');

  int counter = 0;

  while (true) {
    try {
      print('---new operation---');
      counter++;
      print('operation count: $counter');

      print('enter command (continue: enter, skip: s, clear: c, exit: q):');
      String? command = stdin.readLineSync();
      if (command == 'q') {
        print('exiting...');
        break;
      }
      if (command == 'c') {
        print('\x1B[2J\x1B[0;0H'); // clear
        counter = 0;
        continue; // new iteration, continue from the start of the loop
      }
      if (command == 's') {
        print('this operation was skipped');
        continue; // skip this iteration
      }

      // get the first number
      print('enter the first number:');
      String? number1Input = stdin.readLineSync();
      if (number1Input == null || number1Input.trim().isEmpty) {
        throw Exception('enter a number, null is not accepted');
      }
      double number1 = double.parse(number1Input.trim());

      // get the second number
      print('enter the second number:');
      String? number2Input = stdin.readLineSync();
      if (number2Input == null || number2Input.trim().isEmpty) {
        throw Exception('enter a valid number');
      }
      double number2 = double.parse(number2Input.trim());

      // get the operation type
      print('enter a valid operation type (+, -, *, /):');
      String? operationInput = stdin.readLineSync();
      if (operationInput == null || operationInput.trim().isEmpty) {
        throw Exception('invalid operation type');
      }
      String operation = operationInput.trim();

      double result;

      switch (operation) {
        case '+':
          result = number1 + number2;
          break;

        case '-':
          result = number1 - number2;
          break;

        case '*':
          result = number1 * number2;
          break;

        case '/':
          if (number2 == 0) {
            throw Exception('$number1 cannot be divided by 0. Try again.');
          }
          result = number1 / number2;
          break;

        default:
          throw Exception('enter a valid operation type.');
      }

      print('your operation result: $number1 $operation $number2 = $result');
    } catch (e) {
      print('error: $e');
    }
  }
}
