import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
    required this.imgSrc,
    this.opacity,
    required this.child,
  });
  final Widget child;
  final String imgSrc;
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imgSrc),
          opacity: opacity ?? 1,
        ),
      ),
      child: child,
    );
  }
}
