import 'package:equatable/equatable.dart';

class CategoryMOdel extends Equatable {
  final String name;
  final String imgUrl;
  const CategoryMOdel({
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [name, imgUrl];
  static List<CategoryMOdel> categories = [
    const CategoryMOdel(
        name: 'HeadPhone',
        imgUrl:
            'https://indiater.com/wp-content/uploads/2020/03/headset-promo-banner-design-free-social-media-template-free-psd-990x483.jpg'),
    const CategoryMOdel(
        name: 'Shoes',
        imgUrl:
            'https://ichef.bbci.co.uk/news/976/cpsprodpb/B9FF/production/_117751674_satan-shoes1.jpg.webp'),
    const CategoryMOdel(
        name: 'Galaxy Watch',
        imgUrl:
            'https://m-cdn.phonearena.com/images/hub/234-wide-two_940/Samsung-Galaxy-Watch-5-release-date-price-and-features.webp?1670925958'),
  ];
}
