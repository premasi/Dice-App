import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //Cara 1
        // body: GradientContainer([Color.fromARGB(255, 1, 1, 1)])

        //Cara2
        body: GradientContainer(Color.fromARGB(255, 143, 135, 255), Color.fromARGB(255, 61, 71, 129))
      ),
    ),
  );
}


