import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/view/home.dart';
import 'package:flutter_meditation_app/widgets/scroll/custom_scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation',
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomeView()
    );
  }
}

