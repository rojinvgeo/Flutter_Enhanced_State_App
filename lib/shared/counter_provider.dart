import 'package:flutter/material.dart';

class CounterState {
  int count = 0;
  void increment() => count++;
}

class CounterProvider extends InheritedWidget {
  final CounterState counter;
  const CounterProvider({super.key, required this.counter, required Widget child})
      : super(child: child);

  static CounterProvider of(BuildContext context) {
    final CounterProvider? result =
        context.dependOnInheritedWidgetOfExactType<CounterProvider>();
    assert(result != null, 'No CounterProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) => true;
}
