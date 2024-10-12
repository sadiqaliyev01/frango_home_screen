import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  const ProductName({super.key, required this.productName, this.style});

  final String productName;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      productName,
      style: style,
    );
  }
}
