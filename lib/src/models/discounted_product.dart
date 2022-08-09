import 'product.dart';

class DiscountedProduct extends Product {
  final num discountedPrice;

  const DiscountedProduct({
    required super.name,
    required super.price,
    required this.discountedPrice,
    super.description,
    super.category,
    super.style,
    super.country,
    super.images,
    super.sizes,
  });
}
