import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        color: Color(0xFF4C53A5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ), 
                    Text("Rp 5.500.000", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                    ),
                  ],
                ),

                Container(
                  alignment: Alignment.topCenter,
                  height: 27,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF4C53A5),
                    borderRadius: BorderRadius.circular(10),
                  
                  ),
                  child: Text(
                    "Check out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  ),

              ],
            )));
  }
}
