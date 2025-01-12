import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems;

  const FavoritePage({super.key, required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: const Color(0xFF4C53A5),
      ),
      body: favoriteItems.isEmpty
          ? const Center(child: Text('No items in favorites'))
          : ListView.builder(
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                final item = favoriteItems[index];
                return ListTile(
                  leading: Image.asset(item['image']),
                  title: Text(item['title']),
                  subtitle: Text(item['price']),
                );
              },
            ),
    );
  }
}
