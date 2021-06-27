import 'package:flutter/material.dart';

const Color _buttonBackgroundColor = Color.fromARGB(255, 31, 31, 31);
const Color _buttonGreen = Color.fromARGB(255, 66, 126, 4);
const Color _buttonRed = Color.fromARGB(255, 214, 118, 102);
const Color _textGreen = Color.fromARGB(255, 146, 202, 77);

const EdgeInsets _buttonPadding = EdgeInsets.all(15.0);

RawMaterialButton calculatorButton(
    [String content = "",
    Color color = Colors.white,
    Color background = _buttonBackgroundColor]) {
  return RawMaterialButton(
    child: Text(
      content,
      style: TextStyle(fontSize: 30.0, color: color),
    ),
    fillColor: background,
    onPressed: () {},
    padding: _buttonPadding,
    shape: CircleBorder(),
  );
}

void main() => runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(
          backgroundColor: Colors.black, accentTextTheme: TextTheme()),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            color: Colors.grey,
            child: Text("Container Here"),
            height: deviceHeight * 0.45,
            width: deviceWidth,
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.all(15.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calculatorButton("C", _buttonRed),
            calculatorButton("( )", _textGreen),
            calculatorButton("%", _textGreen),
            calculatorButton("÷", _textGreen),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calculatorButton("7"),
            calculatorButton("8"),
            calculatorButton("9"),
            calculatorButton("×", _textGreen),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calculatorButton("4"),
            calculatorButton("5"),
            calculatorButton("6"),
            calculatorButton("-", _textGreen),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          calculatorButton("1"),
          calculatorButton("2"),
          calculatorButton("3"),
          calculatorButton("+", _textGreen),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calculatorButton("+/-"),
            calculatorButton("0"),
            calculatorButton("."),
            calculatorButton("=", Colors.white, _buttonGreen),
          ],
        ),
      ]),
    );
  }
}
