import 'package:burmese_digits_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'app_style.dart';
import 'RegularNumberButtonWidget.dart';

enum OPERATION { ADD, SUBTRACT, MULTIPLY, DIVIDE }

class Calculator_Page extends StatefulWidget {
  @override
  _Calculator_PageState createState() => _Calculator_PageState();
}

class _Calculator_PageState extends State<Calculator_Page> {
  OPERATION _operation;
  String _display = '';
  int NUMB1 = null;
  int NUMB2 = null;
  String temp = '';

  void keyFun(String str, String engStr) {
    _display = _display + str;
    temp = temp + engStr;
  }

  void operationFun(OPERATION op) {
    print("Inside the operationFun");
    if (_operation == null && temp != null) {
      _operation = op;

      if (NUMB1 == null) {
        NUMB1 = int.parse(temp);
        print('Numb1 is here! $NUMB1');
      } else {
        NUMB2 = int.parse(temp);
        print('Numb2 is here! $NUMB2');
      }
      temp = '';

      if (op == OPERATION.ADD) {
        _display = _display + " + ";
      }
      if (op == OPERATION.SUBTRACT) {
        _display = _display + " - ";
      }
      if (op == OPERATION.MULTIPLY) {
        _display = _display + " x ";
      }
      if (op == OPERATION.DIVIDE) {
        _display = _display + " / ";
      }
    } else {
      print('You have already selected an operation.');
    }
  }

  String convertEng2Burmese(String english) {
    String burmese;

    burmese = english.replaceAll(RegExp(r'0'), '၀');
    burmese = burmese.replaceAll(RegExp(r'1'), '၁');
    burmese = burmese.replaceAll(RegExp(r'2'), '၂');
    burmese = burmese.replaceAll(RegExp(r'3'), '၃');
    burmese = burmese.replaceAll(RegExp(r'4'), '၄');
    burmese = burmese.replaceAll(RegExp(r'5'), '၅');
    burmese = burmese.replaceAll(RegExp(r'6'), '၆');
    burmese = burmese.replaceAll(RegExp(r'7'), '၇');
    burmese = burmese.replaceAll(RegExp(r'8'), '၈');
    burmese = burmese.replaceAll(RegExp(r'9'), '၉');

    return burmese;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
//padding: EdgeInsets.all(3.0),
      decoration:
          BoxDecoration(border: Border.all(color: borderColor, width: 25)
/*image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/WoodenFrame2.jpg'),
            ), */
              ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellowAccent, width: 3),
              ),
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomRight,
              child: Text(
                _display,
                style: displayInterfaceStyle,
              ),
            ),
          ),
          Divider(
            color: Colors.yellow,
            thickness: 8.0,
          ),
//SizedBox(height: 10.0),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellowAccent, width: 3),
              ),
//padding: EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 8,
                          child: RegularNumberButton(
                            isFun: () {
                              print('Everything is cleared!');
                              setState(() {
                                _display = ' ';
                                _operation = null;
                                temp = '';
                                NUMB1 = null;
                                NUMB2 = null;
                              });
                            },
                            label: "ဖျက်",
                          )),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: RegularNumberButton(
                              isFun: () {
                                setState(() {
                                  operationFun(OPERATION.DIVIDE);
                                });
                              },
                              label: "/"))
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.yellow,
                      thickness: 5.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: RegularNumberButton(
                          isFun: () {
                            print("7 is pressed.");
                            setState(() {
                              keyFun('၇', '7');
                            });
                          },
                          label: "၇",
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RegularNumberButton(
                            isFun: () {
                              print('8 is pressed!');
                              setState(() {
                                keyFun('၈', '8');
                              });
                            },
                            label: "၈"),
                      ),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RegularNumberButton(
                            isFun: () {
                              print('9 is pressed');
                              setState(() {
                                keyFun('၉', '9');
                              });
                            },
                            label: "၉"),
                      ),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RegularNumberButton(
                            isFun: () {
                              print('x is pressed.');
                              setState(() {
                                operationFun(OPERATION.MULTIPLY);
                              });
                            },
                            label: "x"),
                      )
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.yellow,
                      thickness: 5.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: RegularNumberButton(
                              isFun: () {
                                print('4 is pressed');
                                setState(() {
                                  keyFun('၄', '4');
                                });
                              },
                              label: "၄")),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                          child: RegularNumberButton(
                              isFun: () {
                                print('5 is pressed');
                                setState(() {
                                  keyFun('၅', '5');
                                });
                              },
                              label: "၅")),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                          child: RegularNumberButton(
                              isFun: () {
                                print('6 is pressed');
                                setState(() {
                                  keyFun('၆', '6');
                                });
                              },
                              label: "၆")),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RegularNumberButton(
                            isFun: () {
                              print('- is pressed');
                              setState(() {
                                operationFun(OPERATION.SUBTRACT);
                              });
                            },
                            label: "-"),
                      )
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.yellow,
                      thickness: 5.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: RegularNumberButton(
                            isFun: () {
                              print('1 is pressed');
                              setState(() {
                                keyFun('၁', '1');
                              });
                            },
                            label: "၁"),
                      ),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                          child: RegularNumberButton(
                              isFun: () {
                                print('2 is pressed.');
                                setState(() {
                                  keyFun('၂', '2');
                                });
                              },
                              label: "၂")),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                          child: RegularNumberButton(
                              isFun: () {
                                print('3 is pressed.');
                                setState(() {
                                  keyFun('၃', '3');
                                });
                              },
                              label: "၃")),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RegularNumberButton(
                            isFun: () {
                              print('+ is pressed.!');
                              setState(() {
                                print("function is called in ADD");
                                operationFun(OPERATION.ADD);
                              });
                            },
                            label: "+"),
                      )
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.yellow,
                      thickness: 5.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                          flex: 8,
                          child: RegularNumberButton(
                              isFun: () {
                                print('0 is pressed.');
                                setState(() {
                                  keyFun('၀', '0');
                                });
                              },
                              label: "၀")),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          child: VerticalDivider(
                            thickness: 3.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: RegularNumberButton(
                          isFun: () {
                            print('Check the operation');
                            setState(() {
                              NUMB2 = int.parse(temp);
                              print(NUMB1);
                              print(NUMB2);
                              print(_operation);

                              if (NUMB1 != null &&
                                  NUMB2 != null &&
                                  _operation != null) {
                                CalculatorBrain brain = CalculatorBrain();
                                if (_operation == OPERATION.ADD) {
                                  brain.add(NUMB1, NUMB2);
                                  print("Going for + operation");
                                } else if (_operation == OPERATION.SUBTRACT) {
                                  brain.subtract(NUMB1, NUMB2);
                                  print("Going for - operation");
                                } else if (_operation == OPERATION.MULTIPLY) {
                                  brain.multiply(NUMB1, NUMB2);
                                  print("Going for + operation");
                                } else if (_operation == OPERATION.DIVIDE) {
                                  brain.divide(NUMB1, NUMB2);
                                  print("Going for + operation");
                                }
                                var result = brain.result();
                                _display =
                                    convertEng2Burmese(result.toString());
                                _operation = null;
                              }
                            });
                          },
                          label: '=',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
