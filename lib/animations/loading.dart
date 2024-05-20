import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/lottie/loading2.json',
      width: 200,
      height: 200,
      // fit: BoxFit.cover,
    );
  }
}
