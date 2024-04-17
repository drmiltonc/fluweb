import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = Colors.blue,
    this.isFilled = false,
  });

  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          side: MaterialStatePropertyAll(BorderSide(color: color)),
          backgroundColor: MaterialStatePropertyAll(
              isFilled ? color.withOpacity(0.3) : Colors.transparent)),
      onPressed: () => onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.3)),
        ),
      ),
    );
  }
}
