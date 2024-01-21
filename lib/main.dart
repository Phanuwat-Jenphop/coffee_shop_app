//import 'package:coffee_shop_app/pages/cart_page.dart';
import 'package:coffee_shop_app/pages/test_page.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(255, 189, 175, 216)
      ),
      home: const TestPage(),
    );
  }
}

/*
List<Map<String, dynamic>> data = [
    {
      'images': 'mock-coffee-01.png',
      'name': 'Cappuccino',
    },
    {
      'images': 'espresso.jpg',
      'name': 'Espresso',
    },
  ];
    List<int> numbers = [1, 2,];
    var image = data[1]['images'];
    var name = data[2]['name'];
*/