import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 100, bottom: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Cart(),
                  Spacer(),
                  Avatar(),
                ],
              ),
              TextHeader(headerText: "Cakes",)
            ],
          )
      ),
    );
  }
}

class TextHeader extends StatelessWidget {
  String headerText;

  TextHeader({
    super.key,
    required this.headerText
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headerText,
          style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.w100),
        ),
        Spacer(),
        Text(
          "See more",
          style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Cart extends StatelessWidget {
  const Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [ Container(
        height: 85,
        width: 85,
        decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(15)),
        child: const Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Text(
              "6",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Products",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w200),
            )
          ],
      ),
      ),
        Positioned(
          top: -20,
          left: 20.125,
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.orangeAccent),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
        ),],
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.person),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Javid \nShaikh",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),
        )
      ],
    );
  }
}
