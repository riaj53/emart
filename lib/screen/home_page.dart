import 'package:carousel_slider/carousel_slider.dart';
import 'package:emart/config/category_model/category_model.dart';
import 'package:emart/widget/category_container.dart';

import 'package:emart/widget/flash_deal/flass_deal_page.dart';
import 'package:emart/widget/header_slider_card.dart';
import 'package:emart/widget/icon/c1_icone.dart';
import 'package:emart/widget/my_color.dart';
import 'package:emart/widget/product_Card.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slide_countdown/slide_countdown.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Mycolor.bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mycolor.bgcolor,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          height: 80,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2,
                viewportFraction: 0.92,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              items: CategoryMOdel.categories
                  .map((category) => HeaderSliderCard(categoryMOdel: category))
                  .toList(),
            ),
            SizedBox(
              height: size.height / 60,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CategoryContainer(
                        text: 'All Category',
                        icone: Icons.category,
                        ontp: () {}),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    CategoryContainer(
                        text: 'Cloths', icone: Icons.auto_awesome, ontp: () {}),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    CategoryContainer(
                        text: 'Mobile',
                        icone: Icons.phone_iphone_outlined,
                        ontp: () {}),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    CategoryContainer(
                        text: 'Laptop', icone: Icons.laptop, ontp: () {}),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    CategoryContainer(
                        text: 'HeadPhones',
                        icone: FontAwesomeIcons.headphones,
                        ontp: () {}),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    CategoryContainer(
                        text: 'HeadPhones',
                        icone: FontAwesomeIcons.headphones,
                        ontp: () {}),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height / 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Text('Flash Deals',
                      style: TextStyle(
                          color: Color.fromARGB(255, 245, 161, 5),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: size.width / 80),
                  const Icon(
                    FireIcon.fire,
                    color: Color.fromARGB(255, 245, 161, 5),
                  ),
                  const Expanded(child: SizedBox()),
                  const SlideCountdown(
                    duration: Duration(days: 10),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 80,
            ),
            const FlashDealPage(),
           
          ],
        ),
      ),
    );
  }
}
