import 'package:flutter/material.dart';
import 'show_cripto.dart';
import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/homepage',
      routes: {
        '/homepage': (context) => const HomePage(),
        '/cripto': (context) => const ShowCripto(),

      }

  ));
}