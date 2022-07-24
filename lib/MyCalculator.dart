import 'package:flutter/material.dart';



class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}



class _MyCalculatorState extends State<MyCalculator> {
  String equation = "0";
  String result = "0";
  String expression = "0";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;


  buttonPressed(String buttonText) {
    setState(() {
      if(buttonText == "C"){
        equation = "0";
        result = "0";
        double equationFontSize = 38.0;
        double resultFontSize = 48.0;

      }else if (buttonText == ""){
        double equationFontSize = 38.0;
        double resultFontSize = 48.0;
        equation = equation.substring(0,equation.length - 1);
        if (equation == ""){
          equation = "0";
        }

      }else if (buttonText == "="){
        double equationFontSize = 38.0;
        double resultFontSize = 48.0;
        equation = equation;
        expression = expression.replaceAll("/", "*");
        expression = expression.replaceAll("-", "+");

      }
    });
  }




  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height *0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: BorderSide(
            color: Colors.white,
            width: 1,
            style: BorderStyle.solid,
          ), // BorderSide
        ), // RoundRectangleBorder
        padding: EdgeInsets.all(15.0),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ), // TextStyle
        ), // Text
      ), // FlatButton
    ); // Container
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),),
      body: Column(
        children: <Widget> [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(equation,style: TextStyle(fontSize: equationFontSize),),
          ), // Container
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(equation,style: TextStyle(fontSize: resultFontSize),),
          ), // Container


          Expanded(
            child: Divider(),
          ), // Expanded

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          buildButton("C",1, Colors.orange),
                          buildButton("CE",1, Colors.orange),
                          buildButton("⌫",1, Colors.orange),

                        ]
                    ), // TableRow
                    TableRow(
                        children: [
                          buildButton("7",1, Colors.black),
                          buildButton("8",1, Colors.black),
                          buildButton("9",1, Colors.black),

                        ]
                    ), // TableRow
                    TableRow(
                        children: [
                          buildButton("4",1, Colors.black),
                          buildButton("5",1, Colors.black),
                          buildButton("6",1, Colors.black),

                        ]
                    ), // TableRow
                    TableRow(
                        children: [
                          buildButton("1",1, Colors.black),
                          buildButton("2",1, Colors.black),
                          buildButton("3",1, Colors.black),

                        ]
                    ), // TableRow
                    TableRow(
                        children: [
                          buildButton(".",1, Colors.black),
                          buildButton("0",1, Colors.black),
                          buildButton("%",1, Colors.black),

                        ]
                    ), // TableRow

                  ],
                ), // Table
              ), // Container
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          buildButton("/",1,Colors.orange),
                        ]
                    ), // TableRow
                    TableRow(
                        children: [
                          buildButton("*",1,Colors.orange),
                        ]
                    ), // TableRow
                    TableRow(
                        children: [
                          buildButton("-",1,Colors.orange),
                        ]
                    ), // TableRow
                    TableRow(
                        children: [
                          buildButton("+",1,Colors.orange),
                        ]
                    ), // TableRow
                    TableRow(
                        children: [
                          buildButton("=",1,Colors.orange),
                        ]
                    ), // TableRow

                  ],
                ), // Table
              ), // Container
            ], // <Widget>[]
          ) // Row
        ], // <Widget>[]
      ),  // Column
    );   // Scaffold
  }
}
