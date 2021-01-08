import 'package:flutter/material.dart';
import 'app_style.dart';
import 'RegularNumberButtonWidget.dart';

class Calculator_Page extends StatefulWidget {
  @override
  _Calculator_PageState createState() => _Calculator_PageState();
}

class _Calculator_PageState extends State<Calculator_Page> {
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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomRight,
              child: Text("Display"),
            ),
          ),
          Divider(
            color: Colors.yellow,
            thickness: 9.0,
          ),
//SizedBox(height: 10.0),
          Expanded(
            flex: 7,
            child: Container(
//padding: EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 8,
                        child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Text(
                              "ဖျက်",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
                        flex: 2,
                        child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Text("/",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.yellow,
                    thickness: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: RegularNumberButton(
                          isFun: () {
                            print("It is pressed.");
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
                            },
                            label: "x"),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.yellow,
                    thickness: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: RegularNumberButton(
                              isFun: () {
                                print('4 is pressed');
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
                            },
                            label: "-"),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.yellow,
                    thickness: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: RegularNumberButton(
                            isFun: () {
                              print('1 is pressed');
                            },
                            label: "၀"),
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
                            },
                            label: "+"),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.yellow,
                    thickness: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        flex: 8,
                        child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Text("၀",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
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
                        flex: 2,
                        child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Text("=",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
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
