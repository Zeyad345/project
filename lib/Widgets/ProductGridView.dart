import 'package:flutter/material.dart';
import 'package:test1/Models/Productmodel.dart';
import 'package:test1/Widgets/ProductCard.dart';

class ProductGridView extends StatelessWidget {
  final List<Product> products;
  final List<Product> favoriteItems;
  final Function(Product product, bool isFavorite) UpdateFavorite;

  const ProductGridView({
    required this.products,
    required this.favoriteItems,
    required this.UpdateFavorite,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(
          title: products[index].title,
          price: products[index].price,
          isFavorite: favoriteItems.contains(products[index]),
          ChangeFavourite: (isFavorite) {
            UpdateFavorite(products[index], isFavorite);
          },
        );
      },
    );
  }
}
