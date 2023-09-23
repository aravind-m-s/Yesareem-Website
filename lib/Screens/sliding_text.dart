import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      height: 40,
      child: Marquee(
        text: 'Some sample text that takes some space.',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 20.0,
        velocity: 100.0,
        startPadding: 10.0,
        accelerationDuration: const Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: const Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}
