import 'package:carousel_slider/carousel_slider.dart';
import 'package:emart/widget/flash_deal/flash_deal_container.dart';
import 'package:emart/widget/product_Card.dart';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Iphone {
  static String imglink =
      'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-max-1.jpg';
  static String name = "Iphone 14 pro";
  static String oldPrice = '\$1200';
  static String newPrice = '\$1100';
}

class Laptop {
  static String imglink =
      'https://5.imimg.com/data5/IZ/WE/TV/SELLER-76766217/dell-laptop-500x500.jpg';
  static String name = "Dell laptop";
  static String oldPrice = '\$500';
  static String newPrice = '\$400';
}

class FlashDealPage extends StatelessWidget {
  const FlashDealPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height / 1.8,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlashDealContainer(
                      imglink: Iphone.imglink,
                      title: Iphone.name,
                      oldprice: Iphone.oldPrice,
                      newPrice: Iphone.newPrice,
                      onpress: () {}),
                  FlashDealContainer(
                      imglink: Laptop.imglink,
                      title: Laptop.name,
                      oldprice: Laptop.oldPrice,
                      newPrice: Laptop.newPrice,
                      onpress: () {})
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('New Arrivals',
                    style: TextStyle(
                        color: Color.fromARGB(255, 245, 161, 5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                          img:
                              'https://www.bdshop.com/pub/media/catalog/product/cache/eaf695a7c2edd83636a0242f7ce59484/s/o/sonoff_l3_pro_pro_rgbic_smart_led_strip_lights_5m_without_adapter_bdshop.jpg',
                          titel: 'SONOFF L3 Pro RGB',
                          price: '\$15',
                          sortdetails:
                              'SONOFF L3 Pro RGBIC Smart LED Strip Lights 5M Without Adapter',
                          onpre: () {}),
                      SizedBox(
                        width: size.width / 40,
                      ),
                      ProductCard(
                          img:
                              'https://admin.sumashtech.com/media/color/190/3631-81440_WEQU8Iu.jpg',
                          titel: 'Apple Watch Series 7',
                          price: '\$500',
                          sortdetails: '',
                          onpre: () {}),
                      SizedBox(
                        width: size.width / 40,
                      ),
                      ProductCard(
                          img:
                              'https://uniquegadget.com.bd/wp-content/uploads/2022/08/Wavefun-T200-True-Wireless-Earbuds-scaled.jpg',
                          titel: 'Wireless Earbuds',
                          price: '\$20',
                          sortdetails: 'Wavefun T200 True Wireless Earbuds',
                          onpre: () {}),
                      SizedBox(
                        width: size.width / 40,
                      ),
                      ProductCard(
                          img:
                              'https://www.bdshop.com/pub/media/catalog/product/cache/eaf695a7c2edd83636a0242f7ce59484/a/m/amazon-echo-dot-4th-generation-smart-speaker-with-alexa-in-bd_1_.jpeg',
                          titel: 'Amazon Echo Dot 4th',
                          price: '\$50',
                          sortdetails:
                              'Amazon Echo Dot 4th Generation- Smart Speaker With Alexa',
                          onpre: () {}),
                      SizedBox(
                        width: size.width / 40,
                      ),
                      ProductCard(
                          img:
                              'https://www.bdshop.com/pub/media/catalog/product/cache/eaf695a7c2edd83636a0242f7ce59484/a/4/a4-tech-comfortfit-stereo-headset-hs-19fbgg.jpeg',
                          titel: 'A4 Tech Headset',
                          price: '\$10',
                          sortdetails:
                              'A4 Tech ComfortFit Stereo Headset HS-19',
                          onpre: () {}),
                      SizedBox(
                        width: size.width / 40,
                      ),
                      ProductCard(
                          img:
                              'https://www.bdshop.com/pub/media/catalog/product/cache/eaf695a7c2edd83636a0242f7ce59484/p/a/panasonic_350_blender_mx-900m_104025.jpg',
                          titel: 'Panasonic 350 Blender(Mx-900M)',
                          price: '\$50',
                          sortdetails: '',
                          onpre: () {}),
                    ],
                  ),
                ),
              )
            ]));
  }
}
