import 'package:first_day/router/app_router.dart';
import 'package:first_day/screen/home/widget/custom_card.dart';
import 'package:first_day/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return
       ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.find_friend);

              },
                child: SvgPicture.asset("assets/icon/find_friend.svg", width: screenHeight * 0.9,)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(                                                                         // discover
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discover", style: text_bold),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.discover);
                        },
                        child: Row(
                          children: [
                            Text("View all", style: TextStyle(fontWeight: FontWeight.bold, color: color_primary),),
                            Icon(Icons.arrow_right_alt, color: color_primary,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenWidth * 0.4*1.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CustomCard(pathImage: "assets/image/card1.png",
                          content: "Get Smarter with Productivity Quizz ABC DFG",
                          pathUser: "assets/image/avatar_author.png", nameUser: "Titus Kitamura"),
                      CustomCard(pathImage: "assets/image/card2.png",
                          content: "Great Ideas Come from Brilliant Minds sdasdas",
                          pathUser: "assets/image/avatar_author2.png", nameUser: "Titus Kitamura"),
                      CustomCard(pathImage: "assets/image/card1.png",
                          content: "Get Smarter with Productivity Quizz ABC DFG",
                          pathUser: "assets/image/avatar_author.png", nameUser: "Titus Kitamura"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(                                                                         // top authors
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Authors", style: text_bold),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        children: [
                          Text("View all", style: TextStyle(fontWeight: FontWeight.bold, color: color_primary),),
                          Icon(Icons.arrow_right_alt, color: color_primary,),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 100 ,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:  [
                     getAuthor("assets/image/author1.png", "Titus Kitamura"),
                      getAuthor("assets/image/author2.png", "Cyndy Lillibridge"),
                      getAuthor("assets/image/author3.png", "Titus Kitamura"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(                                                                         // top collection
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top collection", style: text_bold),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        children: [
                          Text("View all", style: TextStyle(fontWeight: FontWeight.bold, color: color_primary),),
                          Icon(Icons.arrow_forward_ios, color: color_primary,),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:  [
                    getCollection("assets/image/collection1.png", "Education"),
                      getCollection("assets/image/collection2.png", "Game"),
                      getCollection("assets/image/collection1.png", "Technology"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(                                                                         // trending quiz
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Trending Quiz!", style: text_bold),
                      Row(
                        children: [
                          Text("View all", style: TextStyle(fontWeight: FontWeight.bold, color: color_primary),),
                          Icon(Icons.arrow_forward_ios, color: color_primary,),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenWidth * 0.4*1.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CustomCard(pathImage: "assets/image/trending1.png",
                          content: "Let's Memorize the Names of Flowers",
                          pathUser: "assets/image/avatar_author.png", nameUser: "Cyndy Lillibridge"),
                      CustomCard(pathImage: "assets/image/trending2.png",
                          content: "Earth is Our Home and Will Always be",
                          pathUser: "assets/image/avatar_author2.png", nameUser: "Titus Kitamura"),
                      CustomCard(pathImage: "assets/image/card1.png",
                          content: "Get Smarter with Productivity Quizz ABC DFG",
                          pathUser: "assets/image/avatar_author.png", nameUser: "Cyndy Lillibridge"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(                                                                         // trending quiz
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Top Pick!", style: text_bold),
                      Row(
                        children: [
                          Text("View all", style: TextStyle(fontWeight: FontWeight.bold, color: color_primary),),
                          Icon(Icons.arrow_forward_ios, color: color_primary,),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenWidth * 0.4*1.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CustomCard(pathImage: "assets/image/trending1.png",
                          content: "Let's Memorize the Names of Flowers",
                          pathUser: "assets/image/avatar_author.png", nameUser: "Cyndy Lillibridge"),
                      CustomCard(pathImage: "assets/image/trending2.png",
                          content: "Earth is Our Home and Will Always be",
                          pathUser: "assets/image/avatar_author2.png", nameUser: "Titus Kitamura"),
                      CustomCard(pathImage: "assets/image/card1.png",
                          content: "Get Smarter with Productivity Quizz ABC DFG",
                          pathUser: "assets/image/avatar_author.png", nameUser: "Cyndy Lillibridge"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],

    );
  }
  Widget getAuthor(String pathImage, String nameUser){
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius:  BorderRadius.circular(40),
              child: Image.asset(pathImage,fit: BoxFit.cover,),
            ),
          ),
           Text(nameUser, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
  Widget getCollection(String pathImage, String collection) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.grey.shade400,
                width: 0.5,
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16) ),
                child: Image.asset(pathImage, fit: BoxFit.cover,)),
          ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 24.0, left: 16),
                     child: Text(collection, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                   ),
                 ],
               ),
        ],
      ),
    );
  }
}