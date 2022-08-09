class Product {
  final String name;
  final num price;
  final String? description;
  final String? category;
  final String? style;
  final String? country;
  final List<String>? images;
  final List<String>? sizes;
  final bool isFavorited;

  const Product({
    required this.name,
    required this.price,
    this.description,
    this.category,
    this.style,
    this.country,
    this.images,
    this.sizes,
    this.isFavorited = false,
  });
}
