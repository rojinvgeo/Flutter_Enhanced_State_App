import 'package:flutter/material.dart';
import 'screens/local_counter_screen.dart';
import 'screens/toggle_screen.dart';
import 'screens/shared_counter_screen.dart';
import 'shared/counter_provider.dart';

void main() => runApp(const EnhancedStateApp());

class EnhancedStateApp extends StatelessWidget {
  const EnhancedStateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: CounterState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Enhanced State App',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enhanced State App")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text("1️⃣ Local Counter (setState)"),
            subtitle: const Text("Updates UI locally"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LocalCounterScreen()),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text("2️⃣ Toggle Light (Lifting State Up)"),
            subtitle: const Text("Share state between widgets"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ToggleScreen()),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text("3️⃣ Shared Counter (InheritedWidget)"),
            subtitle: const Text("Share state across screens"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SharedCounterScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
