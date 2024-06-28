import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/custom_options.dart';


class ListOptions2 extends StatelessWidget {
  const ListOptions2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomOptions(
          text: "School",
          icon: SvgPicture.asset(
            'assets/icon/Paper.svg'),
          color: Colors.blue,
          onPressed: () {},
        ),
        CustomOptions(
          text: "Higher Education",
          icon: const Icon(
            Icons.check_circle,
            color: Colors.white,
            size: 30,
          ),
          color: Colors.orange,
          onPressed: () {},
        ),
        CustomOptions(
          text: "Teams",
          icon: const Icon(Icons.groups_rounded,
              color: Colors.white, size: 30),
          color: Colors.greenAccent,
          onPressed: () {},
        ),
        CustomOptions(
          text: "Business",
          icon: const Icon(Icons.person,
              color: Colors.white, size: 30),
          color: Colors.blue,
          onPressed: () {},
        ),
      ],
    );
  }
}
