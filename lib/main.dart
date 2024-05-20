import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sigaapp/screens/home.dart';
import 'package:sigaapp/screens/login.dart';
import 'package:sigaapp/screens/loading_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Aplicativo",
    home: const AppController(),
    routes: {
      '/login': (context) => const Login(),
      '/home': (context) => const Home(),
      '/loading': (context) => const LoadingScreen(),
    },
  ));
}

class AppController extends StatefulWidget {
  const AppController({super.key});

  @override
  State<AppController> createState() => _AppControllerState();
}

class _AppControllerState extends State<AppController> {
  Future<String?>? userData;

  @override
  void initState() {
    super.initState();
    userData = _getUserData();
  }

  Future<String?> _getUserData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setString('userData', 'userdataaaa');
    await prefs.remove('userData');
    return prefs.getString('userData');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: userData,
      builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        }
        if (snapshot.hasData) {
          return const Home();
        }
        return const Login();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
