import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String titel;
  final Color color;
  final Color textColor;
  final VoidCallback onp;
  const Mybutton(
      {super.key,
      required this.titel,
      required this.color,
      required this.textColor,
      required this.onp});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onp,
      child: Container(
        height: size.height / 14,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            titel,
            style: TextStyle(
                color: textColor, fontSize: 22, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
