// runapp is Function provided by flutter
// void is return type
// main is function name
// function body{}
// function define and needs to be called

//arguments or parameters (input value)
//run app needs a widget

//const helps dart to optimize runtime performance
//widgets are objects and even data types
// class is a blue print for objects

import 'package:flutter/material.dart';
import 'package:dice_roller_udemy/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 27, 14, 146),
        body: GradientContainer(colors: [
          Color.fromARGB(255, 38, 5, 94),
          Color.fromARGB(255, 99, 36, 206),
          Color.fromARGB(255, 182, 168, 206),
        ]),
      ),
    ),
  );
}
