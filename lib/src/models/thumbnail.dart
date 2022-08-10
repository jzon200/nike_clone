class Thumbnail {
  final String title;
  final String? imageSrc;

  const Thumbnail({
    required this.title,
    this.imageSrc,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      title: json['title'] ?? '',
      imageSrc: json['imageSrc'],
    );
  }
}
