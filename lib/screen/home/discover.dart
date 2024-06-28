import 'package:first_day/screen/home/widget/card_in_discover.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: ListView(
          children: const [
         CardDiscover(title: "Get Smarter with Product ..", pathImage: "assets/image/card1.png",
             author: "Titus Kitamura", description: "5.6K plays"),
            CardDiscover(title: "Great Ideas Come from...", pathImage: "assets/image/card2.png",
                author: "Alfonzo Schuessler", description: "8.2K plays"),
            CardDiscover(title: "Having Fun & Always S...", pathImage: "assets/image/card3.png",
                author: "Titus Kitamura", description: "9.1K plays"),
            CardDiscover(title: "Can You Imagine, Worl...", pathImage: "assets/image/trending1.png",
                author: "Daryl Nehls", description: "3.7K plays"),
            CardDiscover(title: "Get Smarter with Prod...", pathImage: "assets/image/trending2.png",
                author: "Titus Kitamura", description: "7.2K plays"),
          ],
        ),
      )
    );
  }
}
