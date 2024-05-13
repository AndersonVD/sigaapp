import 'package:flutter/material.dart';
import 'package:sigaapp/screens/home.dart';
import 'package:sigaapp/screens/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Aplicativo",
    initialRoute: '/',
    routes: {
      '/' :    (context) => const Login(),
      '/home': (context) => const Home(),
    }
  ));
}