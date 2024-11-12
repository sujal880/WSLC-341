import 'package:flutter/material.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      home: FirstScreen(), // First Screen
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WsCubeTech"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                color: Colors.red, shape: BoxShape.rectangle),
          ),
        )); // Screen Creation 1. App Bar 2. Body 3. Bottom Navigation Bar
  }
}
