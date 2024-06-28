import 'package:flutter/material.dart';

import '../../../components/custom_options.dart';

class ListOptions1 extends StatelessWidget {
  const ListOptions1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      CustomOptions(
        text: "Personal",
        icon: const Icon(Icons.person,
            color: Colors.white, size: 30),
        color: Colors.blue,
        onPressed: () {},
      ),
      CustomOptions(
        text: "Teacher", // body
        icon: const Icon(Icons.groups,
            color: Colors.white, size: 30),
        color: Colors.orange,
        onPressed: () {},
      ),
      CustomOptions(
        text: "Student",
        icon: const Icon(Icons.groups_rounded,
            color: Colors.white, size: 30),
        color: Colors.greenAccent,
        onPressed: () {},
      ),
      CustomOptions(
        text: "Personal",
        icon: const Icon(Icons.person,
            color: Colors.white, size: 30),
        color: Colors.blue,
        onPressed: () {},
      ),
    ]);
  }
}
