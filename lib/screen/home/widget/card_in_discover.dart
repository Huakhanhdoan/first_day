import 'package:flutter/material.dart';

class CardDiscover extends StatelessWidget {
  final String title;
  final String description;
  final String author;
  final String pathImage;

  const CardDiscover(
      {required this.title,
      required this.pathImage,
      required this.author,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.grey.shade400,
              width: 0.5,
            ),
            //    boxShadow: [
            //      BoxShadow(
            //        color: Colors.grey.withOpacity(0.5),
            //        spreadRadius: 0.2,
            //        blurRadius: 0.5,
            //        offset: const Offset(0, 10),
            //      ),
            //    ],
            color: Colors.white),
        child: Row(children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                image: DecorationImage(
                  image: AssetImage(pathImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: (Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Row(
                      children: [
                        const Text("6 months ago"),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.person),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(author),
                      ],
                    ),
                  ],
                )),
              ))
        ]),
      ),
    );
  }
}
