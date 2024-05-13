import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final String? path;
  final Color? color;
  final double? width;
  final double? height;

  const Button({
    required this.label,
    super.key,
    this.color,
    this.path,
    this.height,
    this.width
  });
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ()  {
          Navigator.pushNamed(context, path.toString());
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(color ?? Colors.green),
          minimumSize: WidgetStateProperty.all(Size(width ?? double.infinity, height ?? 48.0)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            )
          ),
        ),
        child: Text(
          label, 
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white, 
            fontWeight: FontWeight.w600
          )
        ),
    );
  }
}