import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: JumpingDotsProgressIndicator(
        numberOfDots: 4,
        color: Colors.white,
        fontSize: 150.0,
      ),
    );
  }
}
