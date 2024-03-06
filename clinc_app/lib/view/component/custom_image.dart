import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String url;
  const CustomImage({
    this.width,
    this.height,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(url),
      width: width,
      fit: BoxFit.cover,
    );
  }
}
//"asset/logo.png"