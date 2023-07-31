import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
        indent: 10, endIndent: 10, thickness: 2, color: Colors.white70);
  }
}
