import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/gradient_text.dart';
import 'package:flutter_complete_guide/dice_container.dart';

// CARA 1
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: const Center(
//         child: GradientText("raise")
//       ),
//     );
//   }
// }

// CARA 2
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        // child: GradientText('raise'),
        child: DiceContainer(),
      ),
    );
  }
}
