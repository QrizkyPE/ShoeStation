import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget{
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        const Icon(
          Icons.sort,
          size: 30,
          color: Color(0xFF4C53A5),
          ),
        const Padding(padding: EdgeInsets.only(left: 20,),
        child: Text("ShoeStation",
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,
        color: Color(0xFF4C53A5)), textAlign: TextAlign.center,
        ),
        ),
        const Spacer(),
        // badges.Badge(
        Container(
          // badgeColor: Colors.white,
          // padding: const EdgeInsets.all(7),
          // badgeContent: const Text(
          //   "",
          //   style:TextStyle(
          //     color: Colors.white
          //   )
          // ),

          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context,"/profile");
            },
            child: const Icon(
              Icons.person,
              size: 32,
              color: Color(0xFF4C53A5),
              
              ),
          )
        )
        // )
        ],
      ),
    );
  }
}