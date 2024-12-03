import 'package:flutter/material.dart';

class BrandButton extends StatelessWidget {
  final String brand;

  const BrandButton({required this.brand, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        backgroundColor: Colors.grey[200],
      ),
      child: Text(
        brand,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
