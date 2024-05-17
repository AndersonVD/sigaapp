import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? color;
  final Color? borderColor;
  final double? width;
  final double? height;


  const Button({
    required this.label,
    super.key,
    this.backgroundColor,
    this.color,
    this.borderColor,
    this.onPressed,
    this.height,
    this.width
  });
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor ?? Colors.green),
        minimumSize: MaterialStateProperty.all(Size(width ?? double.infinity, height ?? 48.0)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
              color: borderColor ?? Colors.white
            ),
            borderRadius: BorderRadius.circular(10.0)
          )
        ),
      ),
      child: Text(
        label, 
        style: TextStyle(
          fontSize: 20,
          color: color ?? Colors.white, 
          fontWeight: FontWeight.w600
        )
      ),
    );
  }
}