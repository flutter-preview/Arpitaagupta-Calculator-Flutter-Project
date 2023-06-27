import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CalculatorApp(),
  ));
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red)),
          //buttons area,
          Row(
            children: [
              button(
                  text: "AC",
                  buttonbgColor: operatorColor,
                  tColor: orangeColor),
              button(
                  text: "<-",
                  buttonbgColor: operatorColor,
                  tColor: orangeColor),
              button(text: "", buttonbgColor: Colors.transparent),
              button(
                  text: "/", buttonbgColor: operatorColor, tColor: orangeColor),
            ],
          ),

          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(text: "9"),
              button(
                  text: "x", buttonbgColor: operatorColor, tColor: orangeColor),
            ],
          ),

          Row(
            children: [
              button(text: "4"),
              button(text: "5"),
              button(text: "6"),
              button(
                  text: "-", buttonbgColor: operatorColor, tColor: orangeColor),
            ],
          ),

          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(
                  text: "+", buttonbgColor: operatorColor, tColor: orangeColor),
            ],
          ),

          Row(
            children: [
              button(
                  text: "%", buttonbgColor: operatorColor, tColor: orangeColor),
              button(text: "0"),
              button(text: "."),
              button(text: "=", buttonbgColor: orangeColor),
            ],
          ),
        ],
      ),
    );
  }

  Widget button({
    text,
    tColor = Colors.white,
    buttonbgColor = buttonColor,
  }) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(22),
              primary: buttonbgColor),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: tColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
