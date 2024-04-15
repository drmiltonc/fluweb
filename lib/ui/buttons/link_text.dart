import 'package:flutter/material.dart';

class LinkText extends StatefulWidget {
  const LinkText({super.key, required this.text, this.onPressed});

  final String text;
  final Function? onPressed;

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(widget.onPressed != null) widget.onPressed!();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHover = false;
          });
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Text(
            widget.text,
            style: TextStyle(
              
              color:  isHover ? Colors.white : Colors.grey[400],
              decorationColor: isHover ? Colors.white : Colors.grey[400],
              decoration: isHover ? TextDecoration.underline : TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}