import 'package:flutter/material.dart';
import 'package:football_app/pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MainPage(),
    );
  }
}
