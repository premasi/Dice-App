import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceContainer extends StatefulWidget {
  const DiceContainer({super.key});

  @override
  State<DiceContainer> createState() {
    return _DiceContainerState();
  }
}

class _DiceContainerState extends State<DiceContainer> {
  var diceNumber = 1;
  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$diceNumber.png',
          height: 150,
          width: 150,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            backgroundColor: Colors.amber,
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
