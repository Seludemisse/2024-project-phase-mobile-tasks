import 'dart:math';
import 'dart:io';

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw Exception("Cannot divide by zero");
    }
    return a / b;
  }

  double modulus(double a, double b) {
    return a % b;
  }

  double power(double a, double b) {
    return pow(a, b).toDouble();
  }

  Future<void> performCalculation() async {
    final calculator = Calculator();

    while (true) {
      try {
        stdout.write("Enter first number: ");
        double num1 = double.parse(stdin.readLineSync()!);

        stdout.write("Enter an operator (+, -, *, /, %, ^): ");
        String operator = stdin.readLineSync()!;

        stdout.write("Enter second number: ");
        double num2 = double.parse(stdin.readLineSync()!);

        double result;
        switch (operator) {
          case '+':
            result = calculator.add(num1, num2);
            break;
          case '-':
            result = calculator.subtract(num1, num2);
            break;
          case '*':
            result = calculator.multiply(num1, num2);
            break;
          case '/':
            result = calculator.divide(num1, num2);
            break;
          case '%':
            result = calculator.modulus(num1, num2);
            break;
          case '^':
            result = calculator.power(num1, num2);
            break;
          default:
            print("Invalid operator! Please use +, -, *, /, %, or ^.");
            continue;
        }

        print("Calculating result, please wait...");
        await Future.delayed(Duration(seconds: 5));
        print("Result: $result\n");
      } catch (e) {
        print("Error: Invalid input. Please enter valid numbers and operator.");
      }

      stdout.write("Do you want to perform another calculation? (yes/no): ");
      String? choice = stdin.readLineSync()?.toLowerCase();
      if (choice != 'yes') {
        print("Exiting calculator. Goodbye!");
        break;
      }
    }
  }

  void main() async {
    print("Welcome to the Dart Calculator!");
    await performCalculation();
  }
}
