import 'package:flutter/material.dart';

import '../../../models/product_category.dart';
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
    final categoryItems = _categories.map((category) {
      final index = _categories.indexOf(category);
      final isExpanded = _expandedItemIndex == index;
      // final itemKey = GlobalKey();

      // TODO: Scroll to Tapped CategoryItem
      return CategoryItem(
        // key: itemKey,
        category: category,
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
  ProductCategory(
    name: 'New & Featured',
    assetName: 'assets/categories/new_featured.png',
    subcategories: [
      'New Releases',
      'Available Only in the App',
      'Air Force 1',
      'Air Max',
      'Basic Essentials',
      'Footbal Club Kits',
      'Top Picks Under 3,500',
      'Last Sizes Available',
    ],
  ),
  ProductCategory(
    name: 'Shoes',
    assetName: 'assets/categories/shoes.png',
    subcategories: [
      'New Releases',
      'All Shoes',
      'Lifestyle',
      'Running',
      'Basketball',
      'Jordan',
      'Football',
      'Gym and Training',
    ],
  ),
  ProductCategory(
    name: 'Clothing',
    assetName: 'assets/categories/clothing.png',
    subcategories: [
      'New Releases',
      'All Clothing',
      'Tops and T-Shirts',
      'Jerseys and Kits',
      'Hoodies and Sweatshirts',
      'Jackets and GIlets',
      'Pants and Leggings',
      'Tracksuits',
    ],
  ),
  ProductCategory(
    name: 'Sale',
    assetName: 'assets/categories/sale.png',
    subcategories: [
      'Shop All Sale',
      'Shop Sale Shoes',
      'Shop Sale Clothing',
      'Shop Sale Accessories and Equipment',
    ],
  ),
  ProductCategory(
    name: 'Member Shop',
    assetName: 'assets/categories/member_shop.png',
    subcategories: [
      'Member Days Is Coming',
      'Shop All Member Exclusives',
      'New and Upcoming Drops',
      'Nike Membership Benefits',
    ],
  ),
];
