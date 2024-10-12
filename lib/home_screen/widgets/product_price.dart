import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, this.style, required this.price});

  final TextStyle? style;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: style,
    );
  }
}
