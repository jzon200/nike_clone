import 'package:flutter/material.dart';

import '../shared/widgets/widgets.dart';

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
