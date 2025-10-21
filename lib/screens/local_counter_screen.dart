import 'package:flutter/material.dart';

class LocalCounterScreen extends StatefulWidget {
  const LocalCounterScreen({super.key});

  @override
  State<LocalCounterScreen> createState() => _LocalCounterScreenState();
}

class _LocalCounterScreenState extends State<LocalCounterScreen> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Local Counter (setState)")),
      body: Center(
        child: Text('Count: $count', style: const TextStyle(fontSize: 30)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: increment, child: const Icon(Icons.add)),
          const SizedBox(width: 10),
          FloatingActionButton(onPressed: reset, child: const Icon(Icons.refresh)),
        ],
      ),
    );
  }
}
