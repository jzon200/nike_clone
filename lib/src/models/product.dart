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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'category': category,
      'style': style,
      'country': country,
      'images': images,
      'sizes': sizes,
      'isFavorited': isFavorited,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] ?? '',
      price: json['price'] ?? 0,
      description: json['description'],
      category: json['category'],
      style: json['style'],
      country: json['country'],
      images: List<String>.from(json['images'] ?? []),
      sizes: List<String>.from(json['sizes'] ?? []),
      isFavorited: false,
    );
  }
}
