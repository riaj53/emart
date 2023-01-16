import 'package:emart/widget/my_color.dart';
import 'package:flutter/material.dart';

class FlashDealContainer extends StatelessWidget {
  final String imglink;
  final String title;
  final String oldprice;
  final String newPrice;
  final VoidCallback onpress;
  const FlashDealContainer(
      {super.key,
      required this.imglink,
      required this.title,
      required this.oldprice,
      required this.newPrice,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onpress,
      child: Container(
        height: size.height / 4,
        width: size.width / 2.5,
        decoration: BoxDecoration(
            color: Mycolor.containerColor,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height / 7.5,
                width: size.width / 3.5,
                child: Image.network(
                  imglink,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // SizedBox(
            //   height: size.height / 90,
            // ),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(
              height: size.height / 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  oldprice,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.grey,
                      decorationThickness: 2),
                ),
                Text(
                  newPrice,
                  style: const TextStyle(color: Colors.red, fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
