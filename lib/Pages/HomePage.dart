import 'package:flutter/material.dart';
import 'package:test1/Models/Productmodel.dart';
import 'package:test1/Pages/Favouritespage.dart';
import 'package:test1/Widgets/BrandBar.dart';
import 'package:test1/Widgets/ProductGridView.dart';
import 'package:test1/Widgets/SearchBarField.dart';
import 'package:test1/Widgets/WelcomeBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Product> products = [
    Product(
      title: "Nike Sportswear Club Fleece",
      price: "\$99",
    ),
    Product(
      title: "Trail Running Jacket Nike Windrunner",
      price: "\$99",
    ),
    Product(
      title: "Classic Shirt",
      price: "\$49",
    ),
    Product(
      title: "Hoodie Blue",
      price: "\$79",
    ),
  ];

  List<Product> favoriteItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Laza"),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.lock, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: _selectedIndex == 0
          ? buildHomePage()
          : FavoritesPage(favoriteItems: favoriteItems),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
          ),
        ],
      ),
    );
  }

  Widget buildHomePage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeBar(),
          const SizedBox(height: 16),
          const SearchBarField(),
          const SizedBox(height: 16),
          const BrandBar(),
          const SizedBox(height: 16),
          const Text(
            "New Arrival",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ProductGridView(
              products: products,
              favoriteItems: favoriteItems,
              UpdateFavorite: (product, isFavorite) {
                setState(() {
                  if (isFavorite) {
                    favoriteItems.remove(product);
                  } else {
                    favoriteItems.add(product);
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
