
import 'package:first_day/screen/home/widget/Search2.dart';
import 'package:first_day/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FindFriend extends StatefulWidget {
  const FindFriend({super.key});

  @override
  State<FindFriend> createState() => _FindFriendState();
}

class _FindFriendState extends State<FindFriend> {
  final List<String> listData = <String>[
    'Nguyen Van A',
    'Le Van B',
    'Hua Van C',
    // Thêm các dữ liệu khác
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find Friend"),
      ),
      body: Stack(
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0, bottom: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 10,),
            Container(
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 0.5,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getOptions("assets/image/book.png", "Search Contact", "Find friends by phone number"),
                  Container(
                    height: 0.5,
                    color: Colors.grey,
                  ),
                  getOptions("assets/image/feathers.png", "Connect to Facebook", "Find contact via Facebook"),
                  Container(
                    height: 0.5,
                    color: Colors.grey,
                  ),
                  getOptions("assets/image/facebook.png", "Invite Friend", "Invite friends to play together"),
                ],
              ),
            ),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("People you may know", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Text("Views all", style: TextStyle(color: Colors.blue, fontSize: 16),),
                        Icon(Icons.arrow_forward_sharp, color: Colors.blue,),
                      ],
                    )
                  ],
                ),
                userInformation("assets/image/author1.png", "Darron Kulikowski"),
                userInformation("assets/image/author2.png", "Maryland Winkles"),
                userInformation("assets/image/author3.png", "Lauralee Quintero"),
                userInformation("assets/image/author1.png", "Alfonzo Schuessler"),
                userInformation("assets/image/author2.png", "Lauralee Quintero"),
              ],
            ),
          ),
        ),

          const SearchWithSuggestion(),
        ],
      ),
    );
  }
  Widget getOptions(String pathImage, String title,String content ) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 2,
            child: Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                    child: Image.asset(pathImage, fit: BoxFit.cover)),
              ),
            ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Text(content, overflow: TextOverflow.ellipsis,style: const TextStyle(fontSize: 16),),
            ],
          ),
        ),
        Expanded (
          flex: 1,
          child: IconButton(onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios)
          ),
        ),
      ],
    );
  }
  Widget userInformation(String pathImage, String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(pathImage, height: 50, width: 50,),
          ),
          const SizedBox(width: 10,),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          const Spacer(),
          TextButton(onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color_primary),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
              ),
              child: const Text("Follow", style: TextStyle(color: Colors.white),)),
        ],
      ),
    );
  }
}