import 'package:emart/widget/my_color.dart';

import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final IconData icone;

  final String text;
  final VoidCallback? ontp;
  const CategoryContainer({
    super.key,
    required this.icone,
    required this.text,
    required this.ontp,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ontp,
      child: Container(
        height: size.height / 8,
        width: size.width / 3,
        decoration: BoxDecoration(
            color: Mycolor.containerColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icone,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              height: size.height / 70,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
