import 'package:first_day/screen/home/find_friend.dart';
import 'package:first_day/screen/home/layout_default.dart';
import 'package:first_day/screen/sign_in/create_new_password.dart';
import 'package:first_day/screen/sign_in/forgot_password.dart';
import 'package:first_day/screen/sign_in/otp_screen.dart';
import 'package:first_day/screen/sign_in/sign_in.dart';
import 'package:first_day/screen/sign_up/light_create_account.dart';
import 'package:first_day/screen/sign_up/light_walkthrough.dart';
import 'package:first_day/screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../screen/home/discover.dart';


class AppRoutes {
  static const String splash_screen = '/';
  static const String sign_in = '/sign_in';
  static const String forgot_password = '/sign_in/forgot_password';
  static const String creat_new_password = '/sign_in/create_new_password';
  static const String otp = '/sign_in/otp';
  static const String walk_though = '/sign_up/walk_though';
  static const String sign_up = '/sign_up';
  static const String home = '/home';
  static const String find_friend = '/find_friend';
  static const String discover = '/discover';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) =>  const LayoutDefault());
      case splash_screen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case sign_in:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case forgot_password:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case creat_new_password:
        return MaterialPageRoute(builder: (_) => const CreateNewPassword());
      case otp:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case walk_though:
        return MaterialPageRoute(builder: (_) => const LightWalkthrough());
      case sign_up:
        return MaterialPageRoute(builder: (_) =>  const LightCreateAccount());
      case find_friend:
        return MaterialPageRoute(builder: (_) => const FindFriend());
        case discover:
        return MaterialPageRoute(builder: (_) => const Discover());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
