import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, this.style, required this.description});

  final TextStyle? style;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: style,
    );
  }
}
