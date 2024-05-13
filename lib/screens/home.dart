import "package:flutter/material.dart";
import "package:sigaapp/widgets/bottom_bar.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const  BottomNavigation(),
      appBar: AppBar(
        title: const Text("Sigga App"),
      ),
      body: const Column(
        children: [
        ],
      ),
    );
  }
}
