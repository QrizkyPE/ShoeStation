import 'package:flutter/material.dart';

class ItemsWidget extends StatefulWidget {
  final Function addToFavorites; // Callback untuk menambahkan ke favorit
  const ItemsWidget({super.key, required this.addToFavorites});

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  final List<Map<String, dynamic>> products = [
    {"id": 1, "title": "Jordan High Rebellion", "description":"High-quality sports shoes","price": "3.000.000","discount":"10%", "image": "images/1.png"},
    {"id": 2, "title": "Casual Sneakers", "description":"Sneakers for running, sports, and leisure activities", "price": "1.000.000","discount":"15%", "image": "images/2.png"},
    {"id": 3, "title": "Formal Shoes", "description":"Formal shoes for formal occasions","price": "1.500.000", "discount":"10%", "image": "images/3.png"},
    {"id": 4, "title": "Running Shoes", "description":"Running shoes for all kinds of running activities","price": "1.200.000","discount":"10%", "image": "images/4.png"},
    {"id": 5, "title": "Basketball Shoes", "description":"Basketball shoes for all kinds of basketball activities","price": "2.800.000","discount":"15%", "image": "images/5.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: products.map((product) {
        return Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  Text(
                      product["discount"],
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.favorite_border, color: Colors.red),
                    onPressed: () {
                      widget.addToFavorites(product); // Tambahkan ke favorit
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    product["image"],
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  product["title"],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  product["description"],
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Text(
                      "Rp ${product["price"]}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
