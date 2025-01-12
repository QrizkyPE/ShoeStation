import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 7; i <= 11; i++)
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "images/$i.png",
                  // i variable is used to change the image
                  width: 50,
                  height: 50,
                ),
                // const Text("Shoes", style: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 17,
                //   color: Color(0xFF4C53A5),
                // )),
              ])),
        ],
      ),
    );
  }
}
