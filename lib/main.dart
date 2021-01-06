import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Burmese_Digits_Calculator());
}

class Burmese_Digits_Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          //padding: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.orange, width: 25)
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
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
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("%",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("+/-",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("/",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.yellow,
                        thickness: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၇",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၈",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၉",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("x",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.yellow,
                        thickness: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၄",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၅",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၆",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("-",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.yellow,
                        thickness: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၁",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၂",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၃",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("+",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.yellow,
                        thickness: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("၀",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text(".",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Container(
                              child: Text("=",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  )),
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
        ),
      ),
    );
  }
}
