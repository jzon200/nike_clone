import 'package:flutter/material.dart';
import 'package:nike_clone/src/features/shop/widgets/section.dart';

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
          child: SectionList(items: _highlights),
        ),
        Section(
          title: "App Anniversary Drops",
          subtitle: "Dropping at 12:00PM Daily",
          child: SectionList(items: _anniversaryDrops),
        ),
        CategoryList(),
        Section(
          title: "Find The Right Running Shoes",
          child: SectionList(items: _runningShoes),
        ),
        Section(
          title: "Shop By Collection",
          child: SectionList(items: _collections),
        ),
        Section(
          title: "Just In",
          padding: EdgeInsets.all(20.0),
          child: ProductsGrid(productList: _justInItems),
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
          child: SectionList(height: 224, items: _recommendations),
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
  {
    'title': 'Member Days is Coming',
    'imageUrl': '',
  },
  {
    'title': 'Cop Your Fave 👟 Drop',
    'imageUrl': '',
  },
  {
    'title': 'Sneakers of the Week',
    'imageUrl': '',
  },
  {
    'title': 'Air Zoom G.T. Cut 2',
    'imageUrl': '',
  },
  {
    'title': 'Nike React Pegasus Trail 4',
    'imageUrl': '',
  },
  {
    'title': 'Nike React Infinity Run Flyknit 3',
    'imageUrl': '',
  },
  {
    'title': 'Nike Metcon 8',
    'imageUrl': '',
  },
  {
    'title': 'Nike Waffle One SE',
    'imageUrl': '',
  },
  {
    'title': 'Air Max Flyknit Racer',
    'imageUrl': '',
  },
  {
    'title': 'Nike By You',
    'imageUrl': '',
  },
];

// const _discountOffers = [
//   {
//     'name': 'Nike Space Hippie 04',
//     'previousPrice': 7595,
//     'discountedPrice': 4559,
//   },
//   {
//     'name': 'Nike Free Metcon 4',
//     'previousPrice': 6445,
//     'discountedPrice': 3869,
//   },
//   {
//     'name': 'Nike Dri-FIT Run Division Rise 365',
//     'previousPrice': 2195,
//     'discountedPrice': 1759,
//   },
//   {
//     'name': 'Nike Sportswear',
//     'previousPrice': 7595,
//     'discountedPrice': 4559,
//   },
//   {
//     'name': 'Nike Sport Clash',
//     'previousPrice': 1995,
//     'discountedPrice': 1199,
//   },
//   {
//     'name': 'Nike Air Max 90',
//     'previousPrice': 7345,
//     'discountedPrice': 4409,
//   },
// ];

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

const _justInItems = [
  {
    'name': 'NOCTA Hot Step Air Terra',
    'price': 7795,
  },
  {
    'name': 'Zion 2 PF',
    'price': 6595,
  },
  {
    'name': 'Nike ZoomX Vaporfly NEXT% 2',
    'price': 10995,
  },
  {
    'name': 'Noke Waffle One SE',
    'price': 5295,
  },
  {
    'name': 'Nike Everyday Plus',
    'price': 495,
  },
  {
    'name': 'Chelsea F.C. 2022/23 Stadium Home',
    'price': 3595,
  },
];

const _popularSearches = [
  'Air Force 1',
  'Air Jordan 1',
  'Air Max',
  'Blazer',
];

const _recommendations = [
  {
    'title': 'NOCTA Hot Step Air Terra',
    'price': 7795,
  },
  {
    'title': 'Zion 2 PF',
    'price': 6595,
  },
  {
    'title': 'Nike ZoomX Vaporfly NEXT% 2',
    'price': 10995,
  },
  {
    'title': 'Noke Waffle One SE',
    'price': 5295,
  },
  {
    'title': 'Nike Everyday Plus',
    'price': 495,
  },
  {
    'title': 'Chelsea F.C. 2022/23 Stadium Home',
    'price': 3595,
  },
];
