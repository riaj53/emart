import 'package:emart/widget/my_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Mycolor.bgcolor,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: Text(
              'Find your',
              style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                // fontFamily: 'Ralway',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Center(
            child: Text(
              'Gadget',
              style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                // fontFamily: 'Ralway',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Image.asset(
            'assets/images/s1.png',
            fit: BoxFit.fill,
          ),
          Container(
            height: size.height / 10,
            decoration: BoxDecoration(
              color: Mycolor.bgcolor,
              boxShadow: [
                BoxShadow(
                  color: Mycolor.bgcolor.withOpacity(.7),
                  spreadRadius: 8,
                  blurRadius: 7,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
          ),
          Container(
            height: size.height / 13,
            width: size.width / 1.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Get Started',
                style: TextStyle(
                    color: Mycolor.bgcolor,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
