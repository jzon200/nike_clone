import 'dart:convert';

import 'package:flutter/services.dart';

import '../../../models/models.dart';

class MockNikeService {
  static Future<ShopData> getShopData(String route) async {
    final weeksHiglights = await _getHighlights(route);
    final collections = await _getCollections(route);
    final products = await _getProducts(route);

    return ShopData(
      weeksHiglights: weeksHiglights,
      collections: collections,
      products: products,
    );
  }

  static Future<List<Thumbnail>> _getHighlights(String route) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final data = await _loadAsset('assets/data/mock_highlights.json');
    final Map<String, dynamic> json = jsonDecode(data);

    if (json[route] != null) {
      final highlights = <Thumbnail>[];

      for (final highlight in json[route]) {
        highlights.add(Thumbnail.fromJson(highlight));
      }
      return highlights;
    } else {
      return [];
    }
  }

  static Future<List<Thumbnail>> _getCollections(String route) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final data = await _loadAsset('assets/data/mock_collections.json');
    final Map<String, dynamic> json = jsonDecode(data);

    if (json[route] != null) {
      final collections = <Thumbnail>[];

      for (final collection in json[route]) {
        collections.add(Thumbnail.fromJson(collection));
      }
      return collections;
    } else {
      return [];
    }
  }

  static Future<List<Product>> _getProducts(String route) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final data = await _loadAsset('assets/data/mock_products.json');
    final Map<String, dynamic> json = jsonDecode(data);

    if (json[route] != null) {
      final products = <Product>[];

      for (final collection in json[route]) {
        products.add(Product.fromJson(collection));
      }

      return products;
    } else {
      return [];
    }
  }
}

Future<String> _loadAsset(String path) async {
  return rootBundle.loadString(path);
}
