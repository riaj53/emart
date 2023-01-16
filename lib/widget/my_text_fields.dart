import 'package:emart/widget/my_color.dart';

import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  final String titel;
  final IconData? icone;
  const MyTextFields({super.key, required this.titel, this.icone});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 13.5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: titel,
              hintStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              prefixIcon: Icon(
                icone,
                color: Mycolor.bgcolor,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
