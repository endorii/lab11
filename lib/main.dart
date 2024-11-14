import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './components/color_state.dart';
import './components/color_changer.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IPZ 31 Propolov Serhii',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo Home Page"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ColorChanger(),
      ),
    );
  }
}
