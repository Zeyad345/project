import 'package:flutter/material.dart';
import 'package:test1/Models/Productmodel.dart';

class FavoritesPage extends StatelessWidget {
  final List<Product> favoriteItems;

  const FavoritesPage({required this.favoriteItems, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: favoriteItems.isEmpty
          ? const Center(child: Text("No favorite items yet."))
          : ListView.builder(
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favoriteItems[index].title),
                  subtitle: Text(favoriteItems[index].price),
                );
              },
            ),
    );
  }
}
