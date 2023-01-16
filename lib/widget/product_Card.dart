import 'package:emart/widget/my_color.dart';

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String img;
  final String titel;
  final String sortdetails;

  final String price;
  final VoidCallback onpre;
  const ProductCard(
      {super.key,
      required this.img,
      required this.titel,
      required this.price,
      required this.sortdetails,
      required this.onpre});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onpre,
      child: Container(
        height: size.height / 4.12,
        width: size.width / 2.8,
        decoration: BoxDecoration(
            color: Mycolor.containerColor,
            borderRadius: BorderRadius.circular(10)),
        // padding: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: size.height / 7,
                  width: size.width / 3.2,
                  child: Image.network(
                    img,
                    fit: BoxFit.contain,
                  )),
              // SizedBox(
              //   height: size.height / 90,
              // ),
              Text(
                titel,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                sortdetails,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
              // SizedBox(
              //   height: size.height / 90,
              // ),

              Text(
                price,
                style: const TextStyle(color: Colors.green, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
