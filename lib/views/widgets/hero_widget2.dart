import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroWidget2 extends StatelessWidget {
  const HeroWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'vr-glass',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2.0),
        child: Lottie.asset("assets/lotties/test.json"),
      ),
    );
  }
}
