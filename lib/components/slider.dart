import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/styles.dart';

class CountSlider extends StatefulWidget {
  const CountSlider({super.key});

  @override
  State<CountSlider> createState() => _CountSliderState();
}

class _CountSliderState extends State<CountSlider> {
  @override
  Widget build(BuildContext context) {
    RxInt _current = 0.obs;
    final List<String> imgList = [
      'assets/icon/Walkthough1.svg',
      'assets/icon/Walkthough2.svg',
      'assets/icon/Walkthough3.svg',
      // thêm các đường dẫn ảnh khác tại đây
    ];

    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height /3,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              _current.value = index;
            },
          ),
          items: imgList
              .map((item) => Center(
            child:
            SvgPicture.asset(item, fit: BoxFit.cover, width: MediaQuery.of(context).size.width - 32),
          ))
              .toList(),
        ),
        Obx(
              ()=> Text(
            (_current.value == 0)
                ? "Create, share and play quizzes whenever and wherever you want"
                : (_current.value == 1)
                ? "Find fun and interesting quizzes to boost up your knowledge"
                : "Play and take quiz challenges together with your friends.",
            style: text_bold,
            textAlign: TextAlign.center,
          ),
        ),
        Obx(
              ()=> Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: (_current.value == index) ? 30 : 10,
                  height: 10,
                  margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _current.value == index
                        ?  color_primary
                        :  Colors.grey.shade400,
                  ),
                );
                            }).toList(),
                          ),
              ),
        ),
      ],
    );
  }
}
