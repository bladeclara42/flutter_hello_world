import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "Cls") {
        equation = "0";
        result = "0";
      } else if (buttonText == "Del") {
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        expression = equation;
        expression = expression.replaceAll('x', '*');
        expression = expression.replaceAll('/', '/');
        expression = expression.replaceAll('%', '/100');

        try {
          Parser p = new Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        // equationFontSize = 48.0;
        // resultFontSize = 38.0;
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  spacingRow() {
    return TableRow(children: [
      SizedBox(
        height: 8,
      ),
      SizedBox(
        height: 8,
      ),
      SizedBox(
        height: 8,
      ),
      SizedBox(
        height: 8,
      )
    ]);
  }

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      // color: buttonColor,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
            image: AssetImage("assets/images/badge.png"),
            colorFilter: new ColorFilter.mode(
                Colors.transparent.withOpacity(0.75), BlendMode.srcATop),
            fit: BoxFit.cover),
      ),
      // child: Stack(
      // children: [
      child: TextButton(
        style: TextButton.styleFrom(
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          padding: EdgeInsets.all(15.0),
        ),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontFamily: 'PopHappiness',
          ),
        ),
      ),
      // ],
      //),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xFFF0C2CF)),
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/c3d2a8a5863215fed22525aee876a3892bbe32423e2b269893de502d1ceed33c.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white.withOpacity(0.4),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(equation,
                  style: TextStyle(
                      fontSize: equationFontSize, fontFamily: 'PopHappiness')),
            ),
            Container(
              color: Colors.white.withOpacity(0.4),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Text(result,
                  style: TextStyle(
                      fontSize: resultFontSize, fontFamily: 'PopHappiness')),
            ),
            Expanded(
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Table(
                    children: [
                      TableRow(children: [
                        buildButton("Cls", 1, Colors.transparent),
                        buildButton("Del", 1, Colors.transparent),
                        buildButton("%", 1, Colors.transparent),
                        buildButton("*", 1, Colors.transparent),
                      ]),
                      spacingRow(),
                      TableRow(children: [
                        buildButton("7", 1, Colors.transparent),
                        buildButton("8", 1, Colors.transparent),
                        buildButton("9", 1, Colors.transparent),
                        buildButton("-", 1, Colors.transparent),
                      ]),
                      spacingRow(),
                      TableRow(children: [
                        buildButton("4", 1, Colors.transparent),
                        buildButton("5", 1, Colors.transparent),
                        buildButton("6", 1, Colors.transparent),
                        buildButton("+", 1, Colors.transparent),
                      ]),
                      spacingRow(),
                      TableRow(children: [
                        buildButton("1", 1, Colors.transparent),
                        buildButton("2", 1, Colors.transparent),
                        buildButton("3", 1, Colors.transparent),
                        buildButton("/", 1, Colors.transparent),
                      ]),
                      spacingRow(),
                      TableRow(children: [
                        buildButton(".", 1, Colors.transparent),
                        buildButton("0", 1, Colors.transparent),
                        buildButton("00", 1, Colors.transparent),
                        buildButton("=", 1, Colors.transparent),
                      ])
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
