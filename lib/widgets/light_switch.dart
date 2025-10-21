import 'package:flutter/material.dart';

class LightSwitch extends StatelessWidget {
  final bool isOn;
  final ValueChanged<bool> onChanged;
  const LightSwitch({super.key, required this.isOn, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isOn,
      onChanged: onChanged,
    );
  }
}
