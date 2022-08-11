import 'models.dart';

class ShopData {
  final List<Thumbnail> weeksHiglights;
  final List<Thumbnail> collections;
  final List<Product> products;
  final List<Product> recommendations;

  const ShopData({
    required this.weeksHiglights,
    required this.collections,
    required this.products,
    required this.recommendations,
  });
}
