import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//_ means private class meant to be used by the class diceroller only

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';

  var currentDiceRoll = 2;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          height: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: const Color.fromARGB(255, 22, 5, 116),
            backgroundColor: const Color.fromARGB(230, 215, 229, 237),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
