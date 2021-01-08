class CalculatorBrain {
  //Attributes a least two numbers to complete the operation
  int _answer;

  //The basic operation of a calculator
  void add(int num1, int num2) {
    _answer = num1 + num2;
  }

  //The basic operation of a calculator
  void subtract(int num1, int num2) {
    _answer = num1 - num2;
  }

  //The basic operation of a calculator
  void multiply(int num1, int num2) {
    _answer = num1 * num2;
  }

  //The basic operation of a calculator
  void divide(int num1, int num2) {
    //This is temporary..must find solution to return double.
    _answer = (num1 ~/ num2).toInt();
  }

  int result() {
    return _answer;
  }
}
