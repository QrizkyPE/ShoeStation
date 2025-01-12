import 'package:flutter/material.dart';
import 'package:shoestation/pages/CartPage.dart';
import 'package:shoestation/pages/HomePage.dart';
import 'package:shoestation/pages/ItemPage.dart';
import 'package:shoestation/pages/favorite_page.dart';
import 'package:shoestation/pages/login_page.dart';
import 'package:shoestation/pages/profile_page.dart';
import 'package:shoestation/pages/register_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/register',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/homePage': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        'cartPage': (context) => CartPage(),
        'itemPage': (context) => ItemPage(),
        // Rute untuk halaman favorite dengan data dinamis
        '/favorite': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as List<Map<String, dynamic>>?;
          return FavoritePage(favoriteItems: args ?? []);
        },
      },
    );
  }
}
