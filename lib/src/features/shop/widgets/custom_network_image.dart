import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    Key? key,
    required this.imageSrc,
    required this.size,
  }) : super(key: key);

  final String imageSrc;
  final double size;

  @override
  Widget build(BuildContext context) {
    return FadeInImage.memoryNetwork(
      placeholder: kTransparentImage,
      image: imageSrc,
      width: size,
      height: size,
      fit: BoxFit.cover,
    );
  }
}
