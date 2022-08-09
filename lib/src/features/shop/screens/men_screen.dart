import 'package:flutter/material.dart';

import '../../../models/models.dart';
import '../widgets/widgets.dart';

class MenScreen extends StatelessWidget {
  const MenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Section(
          title: "This Week's Highlights",
          child: SectionList(items: _highlights),
        ),
        Section(
          title: "Enjoy Extra 30% Off",
          subtitle: "Use code APP30",
          actionLabel: 'View All',
          child: SectionList(height: 208, items: _discountOffers),
        ),
        Section(
          title: "App Anniversary Drops",
          subtitle: "Dropping at 12:00PM Daily",
          child: SectionList(items: _anniversaryDrops),
        ),
        CategoryList(),
        Section(
          title: "Find The Right Running Shoes",
          child: SectionList(height: 176, items: _runningShoes),
        ),
        Section(
          title: "Shop By Collection",
          child: SectionList(items: _collections),
        ),
        Section(
          title: "Just In",
          padding: EdgeInsets.all(20.0),
          child: ProductsGrid(),
        ),
        Section(
          title: 'Popular Searches',
          child: PopularSearches(searches: _popularSearches),
        ),
        Section(
          title: 'Recommended for You',
          child: SectionList(height: 208, items: _recommendations),
        ),
        Section(
          title: 'Recently Viewed',
          actionLabel: 'Clear',
          child: SectionList(height: 208, items: _recommendations),
        ),
        Section(
          title: 'Shop By Brand',
          padding: EdgeInsets.all(20.0),
          child: BrandsGrid(),
        ),
        Section(
          title: 'My Interests',
          actionLabel: 'Add Interest',
          child: MyInterests(),
        ),
        Section(
          title: 'Nike Member Services',
          child: MemberServices(),
        ),
        FindStore(),
      ],
    );
  }
}

const _highlights = [
  Highlight(
    title: 'Member Days is Coming',
    imageSrc: '',
  ),
  Highlight(
    title: 'Cop Your Fave 👟 Drop',
    imageSrc: '',
  ),
  Highlight(
    title: 'Sneakers of the Week',
    imageSrc: '',
  ),
  Highlight(
    title: 'Air Zoom G.T. Cut 2',
    imageSrc: '',
  ),
  Highlight(
    title: 'Nike React Pegasus Trail 4',
    imageSrc: '',
  ),
  Highlight(
    title: 'Nike React Infinity Run Flyknit 3',
    imageSrc: '',
  ),
  Highlight(
    title: 'Nike Metcon 8',
    imageSrc: '',
  ),
  Highlight(
    title: 'Nike Waffle One SE',
    imageSrc: '',
  ),
  Highlight(
    title: 'Air Max Flyknit Racer',
    imageSrc: '',
  ),
  Highlight(
    title: 'Nike By You',
    imageSrc: '',
  ),
];

const _discountOffers = [
  DiscountedProduct(
    name: 'Nike Space Hippie 04',
    price: 7595,
    discountedPrice: 4559,
  ),
  DiscountedProduct(
    name: 'Nike Free Metcon 4',
    price: 6445,
    discountedPrice: 3869,
  ),
  DiscountedProduct(
    name: 'Nike Dri-FIT Run Division Rise 365',
    price: 2195,
    discountedPrice: 1759,
  ),
  DiscountedProduct(
    name: 'Nike Sportswear',
    price: 7595,
    discountedPrice: 4559,
  ),
  DiscountedProduct(
    name: 'Nike Sport Clash',
    price: 1995,
    discountedPrice: 1199,
  ),
  DiscountedProduct(
    name: 'Nike Air Max 90',
    price: 7345,
    discountedPrice: 4409,
  ),
];

const _anniversaryDrops = [
  '02 Aug',
  '03 Aug: Nike by You',
  '04 Aug: The Best of Jordan',
  '05 Aug: Sneaker of the Week',
  '06 Aug',
  '07 Aug',
  'Show All',
];

const _runningShoes = [
  'The On-The-Goer',
  'The Jogger',
  'The Runner',
  'The Racer',
];

const _collections = [
  'Sandals and Slides',
  'Pegasus',
  'Accesories & Equipment',
  'Air Force 1',
  'Nike By You',
];

const _popularSearches = [
  'Air Force 1',
  'Air Jordan 1',
  'Air Max',
  'Blazer',
];

const _recommendations = [
  Product(
    name: 'NOCTA Hot Step Air Terra',
    price: 7795,
  ),
  Product(
    name: 'Zion 2 PF',
    price: 6595,
  ),
  Product(
    name: 'Nike ZoomX Vaporfly NEXT% 2',
    price: 10995,
  ),
  Product(
    name: 'Nike Waffle One SE',
    price: 5295,
  ),
  Product(
    name: 'Nike Everyday Plus',
    price: 495,
  ),
  Product(
    name: 'Chelsea F.C. 2022/23 Stadium Home',
    price: 3595,
  ),
];
