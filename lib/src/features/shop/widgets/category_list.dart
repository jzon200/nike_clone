import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int? _expandedItemIndex;

  @override
  Widget build(BuildContext context) {
    final categoryItems = _categories.map((item) {
      final index = _categories.indexOf(item);
      final isExpanded = _expandedItemIndex == index;
      // final itemKey = GlobalKey();

      // TODO: Scroll to Tapped CategoryItem
      return CategoryItem(
        // key: itemKey,
        title: item['title'] as String,
        image: item['image'] as String,
        items: item['items'] as List<String>,
        isExpanded: isExpanded,
        onTap: () {
          setState(() {
            _expandedItemIndex = !isExpanded ? index : null;
          });
          // Scrollable.ensureVisible(itemKey.currentContext ?? context);
          // Scrollable.ensureVisible(context);
        },
      );
    }).toList();

    return Column(
      children: [
        ...categoryItems,
        const SizedBox(height: 24.0),
      ],
    );
  }
}

const _categories = [
  {
    'title': 'New & Featured',
    'image': 'assets/categories/new_featured.png',
    'items': [
      'New Releases',
      'Available Only in the App',
      'Air Force 1',
      'Air Max',
      'Basic Essentials',
      'Footbal Club Kits',
      'Top Picks Under 3,500',
      'Last Sizes Available',
    ],
  },
  {
    'title': 'Shoes',
    'image': 'assets/categories/shoes.png',
    'items': [
      'New Releases',
      'All Shoes',
      'Lifestyle',
      'Running',
      'Basketball',
      'Jordan',
      'Football',
      'Gym and Training',
    ],
  },
  {
    'title': 'Clothing',
    'image': 'assets/categories/clothing.png',
    'items': [
      'New Releases',
      'All Clothing',
      'Tops and T-Shirts',
      'Jerseys and Kits',
      'Hoodies and Sweatshirts',
      'Jackets and GIlets',
      'Pants and Leggings',
      'Tracksuits',
    ],
  },
  {
    'title': 'Sale',
    'image': 'assets/categories/sale.png',
    'items': [
      'Shop All Sale',
      'Shop Sale Shoes',
      'Shop Sale Clothing',
      'Shop Sale Accessories and Equipment',
    ],
  },
  {
    'title': 'Member Shop',
    'image': 'assets/categories/member_shop.png',
    'items': [
      'Member Days Is Coming',
      'Shop All Member Exclusives',
      'New and Upcoming Drops',
      'Nike Membership Benefits',
    ],
  },
];
