<h3>Here is The full Example</h3>

```dart
import 'package:flutter/material.dart';

import 'SweetNavBar/sweet_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SweetNavBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SweetNaveBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SweetNaveBar extends StatefulWidget {
  const SweetNaveBar({Key? key}) : super(key: key);

  @override
  State<SweetNaveBar> createState() => _SweetNavBarState();
}

class _SweetNavBarState extends State<SweetNaveBar> {
  final List<Widget> _items = [
    const Text('Home'),
    const Text('Business'),
    const Text('School'),
  ];

  int cIndex = 0;
  final iconLinearGradiant = List<Color>.from([
    const Color.fromARGB(255, 251, 2, 197),
    const Color.fromARGB(255, 72, 3, 80)
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: iconLinearGradiant,
            ),
          ),
          child: Center(child: _items[cIndex])),
      bottomNavigationBar: SweetNavBar(
        paddingGradientColor: const LinearGradient(colors: [
          Color.fromARGB(255, 72, 3, 80),
          Color.fromARGB(255, 72, 3, 80)
        ]),
        currentIndex: cIndex,
        paddingBackgroundColor: Colors.red,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home',
              iconColors: iconLinearGradiant,
              sweetBackground: Colors.red),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.business), sweetLabel: 'Business'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.school), sweetLabel: 'School'),
        ],
        onTap: (index) {
          setState(() {
            cIndex = index;
          });
        },
      ),
    );
  }
}

```
