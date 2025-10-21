import 'package:flutter/material.dart';

class LightBulb extends StatelessWidget {
  final bool isOn;
  const LightBulb({super.key, required this.isOn});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.lightbulb,
      size: 100,
      color: isOn ? Colors.yellow : Colors.grey,
    );
  }
}
