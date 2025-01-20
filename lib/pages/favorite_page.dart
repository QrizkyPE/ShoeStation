import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
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
      //       bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   onTap: (index) {
      //     if (index == 0) {
      //       // Navigasi ke halaman Cart
      //       Navigator.pushNamed(context, '/homePage');
      //     } else if (index == 1) {
      //       // Navigasi ke halaman Favorite
            
      //         Navigator.pushNamed(context, 'cartPage');
            
      //     }
      //   },
      //   height: 70,
      //   color: const Color(0xFF4C53A5),
      //   items: const [
      //     Icon(
      //       Icons.home,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       CupertinoIcons.cart_fill,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.favorite,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //   ],
      // ),
    );
  }
}
