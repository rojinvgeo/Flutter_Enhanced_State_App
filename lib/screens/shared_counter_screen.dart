import 'package:flutter/material.dart';
import '../shared/counter_provider.dart';

class SharedCounterScreen extends StatefulWidget {
  const SharedCounterScreen({super.key});

  @override
  State<SharedCounterScreen> createState() => _SharedCounterScreenState();
}

class _SharedCounterScreenState extends State<SharedCounterScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Counter (InheritedWidget)")),
      body: Center(
        child: Text(
          'Shared Count: ${provider.counter.count}',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            provider.counter.increment();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
