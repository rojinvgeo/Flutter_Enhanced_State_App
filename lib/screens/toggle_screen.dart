import 'package:flutter/material.dart';
import '../widgets/light_switch.dart';
import '../widgets/light_bulb.dart';

class ToggleScreen extends StatefulWidget {
  const ToggleScreen({super.key});

  @override
  State<ToggleScreen> createState() => _ToggleScreenState();
}

class _ToggleScreenState extends State<ToggleScreen> {
  bool isOn = false;

  void toggle(bool value) {
    setState(() {
      isOn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toggle Light (Lifting State Up)")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LightSwitch(isOn: isOn, onChanged: toggle),
          const SizedBox(height: 20),
          LightBulb(isOn: isOn),
        ],
      ),
    );
  }
}
