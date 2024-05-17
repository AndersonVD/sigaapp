import 'package:flutter/material.dart';
import 'package:sigaapp/widgets/button.dart';
import 'package:sigaapp/widgets/input.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  
  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login", 
                  style: TextStyle(
                    fontWeight: FontWeight.w800, 
                    fontSize: 36
                  )
                ),
                const SizedBox(height: 5.0),
                const Input(label: "Usuário"),
                const SizedBox(height: 10.0),
                const Input(label: "Senha"),
                const SizedBox(height: 10.0),
                Button(
                  label: "Enviar",
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}