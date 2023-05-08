import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: const Text(
            'Calculator',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: const Color(0xFFF0C2CF)),
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
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
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  equation,
                  style:
                      const TextStyle(fontSize: 38, fontFamily: 'PopHappiness'),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  maxLines: 1,
                ),
              ),
            ),
            Container(
              color: Colors.white.withOpacity(0.4),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  result,
                  style:
                      const TextStyle(fontSize: 48, fontFamily: 'PopHappiness'),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  maxLines: 1,
                ),
              ),
            ),
            // Container(
            //   color: Colors.white.withOpacity(0.4),
            //   alignment: Alignment.centerRight,
            //   padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            //   child: Text(equation,
            //       textAlign: TextAlign.right,
            //       style: TextStyle(
            //           fontSize: equationFontSize, fontFamily: 'PopHappiness')),
            // ),
            // Container(
            //   color: Colors.white.withOpacity(0.4),
            //   alignment: Alignment.centerRight,
            //   padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            //   child: Text(result,
            //       overflow: TextOverflow.clip,
            //       textAlign: TextAlign.right,
            //       style: TextStyle(
            //           fontSize: resultFontSize, fontFamily: 'PopHappiness')),
            // ),
            const Expanded(
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Table(
                    children: [
                      TableRow(children: [
                        buildButton("Cls", 1, Colors.transparent),
                        buildButton("Del", 1, Colors.transparent),
                        buildButton("(", 1, Colors.transparent),
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
                        buildButton(")", 1, Colors.transparent),
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

  spacingRow() {
    return const TableRow(children: [
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
            image: const AssetImage("assets/images/badge.png"),
            colorFilter: ColorFilter.mode(
                Colors.transparent.withOpacity(0.75), BlendMode.srcATop),
            fit: BoxFit.cover),
      ),
      // child: Stack(
      // children: [
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          padding: const EdgeInsets.all(15.0),
        ),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontFamily: 'PopHappiness',
          ),
        ),
      ),
    );
  }

  String equation = "0";
  String result = "0";
  String expression = "";

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
          Expression exp = Parser().parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';

          if (result.endsWith('.0')) {
            result = result.substring(0, result.length - 2);
          } else if (result.endsWith('00000000001')) {
            result = result.substring(0, result.length - 10);
          }
        } catch (e) {
          result = "Error";
        }
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }
}
