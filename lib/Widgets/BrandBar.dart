import 'package:flutter/material.dart';
import 'package:test1/Widgets/BrandButton.dart';

class BrandBar extends StatelessWidget {
  const BrandBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Choose Brand",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BrandButton(brand: "Adidas"),
            BrandButton(brand: "Nike"),
            BrandButton(brand: "Fila"),
            BrandButton(brand: "Puma"),
          ],
        ),
      ],
    );
  }
}
