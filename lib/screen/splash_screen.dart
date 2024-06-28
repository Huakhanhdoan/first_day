import 'package:first_day/router/app_router.dart';
import 'package:first_day/screen/sign_up/light_walkthrough.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../utils/styles.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Chuyển hướng đến màn hình Home sau 3 giây
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.walk_though, // Thay HomeScreen bằng màn hình bạn muốn chuyển hướng đến
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            SizedBox(
              height: height/4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/icon/Vector.svg'),
            ),
            Text("Quizzo",  style: text_title),
            SizedBox(
              height: height/5,
            ),
            LoadingAnimationWidget.hexagonDots(
              size: 80,
              color: color_primary,
            ),
          ],
        ),
      ),
    );
  }
}
