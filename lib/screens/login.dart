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
        child:  const Form(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the Column vertically
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w700, 
                    fontSize: 32.0
                  )
                ),
                SizedBox(height: 5.0),
                Input(label: "Usuário"),
                SizedBox(height: 10.0),
                Input(label: "Senha"),
                SizedBox(height: 10.0),
                Button(
                  label: "Enviar", 
                  path: '/home',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}