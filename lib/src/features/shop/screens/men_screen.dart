import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MenScreen extends StatelessWidget {
  const MenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SectionList(
          title: "This Week's Highlights",
          items: _highlights,
        ),
        SectionList(
          title: "App Anniversary Drops",
          subTitle: 'Dropping at 12:00PM Daily',
          items: _offers,
        ),
        CategoryList(),
        SizedBox(height: 24.0),
        SectionList(
          title: "Find The Right Running Shoes",
          items: _runningShoes,
        ),
        SectionList(
          title: "Shop By Collection",
          items: _collections,
        ),
        SizedBox(height: 24.0),
        ProductsGrid(productList: _justInItems),
        PopularSearches(searches: _popularSearches),
        SectionList(
          title: "Recommended For You",
          items: _collections,
        ),
        SectionList(
          title: "Recently Viewed",
          items: _collections,
        ),
        BrandsGrid(),
        MyInterests(),
        MemberServices(),
        FindStore(),
      ],
    );
  }
}

const _highlights = [
  'Member Days is Coming',
  'Cop Your Fave 👟 Drop',
  'Sneakers of the Week',
  'Air Zoom G.T. Cut 2',
  'Nike React Pegasus Trail 4',
  'Nike React Infinity Run Flyknit 3',
  'Nike Metcon 8',
  'Nike Waffle One SE',
  'Air Max Flyknit Racer',
  'Nike By You',
];

const _offers = [
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
