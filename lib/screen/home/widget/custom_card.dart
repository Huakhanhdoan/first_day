
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class CustomCard extends StatelessWidget {
   const CustomCard({super.key, required this.pathImage, required this.content, required this.pathUser, required this.nameUser});
final String pathImage;
final String content;
final String pathUser;
final String nameUser;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenWidth * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.grey.shade400,
            width: 0.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

               SizedBox(
                 height: screenWidth * 0.4*1.5 *0.45,
                 child: ClipRRect(
                   borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                     child: Image.asset(pathImage, width: screenWidth*0.6, fit: BoxFit.cover,)),
               ),
            Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(content, overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.center, maxLines: 2,
                    ),
                  ),
                )),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                      child: Image.asset(pathUser, height: 20,)),
                  const SizedBox(width: 10,),
                  Text(nameUser, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 16),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
