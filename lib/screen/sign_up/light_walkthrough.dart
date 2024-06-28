import 'package:first_day/components/custom_button.dart';
import 'package:first_day/components/slider.dart';
import 'package:first_day/screen/sign_in/sign_in.dart';
import 'package:first_day/screen/sign_up/light_create_account.dart';
import 'package:flutter/material.dart';


class LightWalkthrough extends StatelessWidget {
  const LightWalkthrough({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 8),
          const Expanded(
            child: CountSlider(),
          ),

          Container(
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade400,
                width: 0.5,
              ),
            ),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  CustomButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LightCreateAccount()));
                      },
                      text: "",
                      color: Colors.orange.shade300),
                  CustomButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignIn()));
                      },
                      text: "I ALREADY HAVE AN ACCOUNT",
                      color: const Color.fromRGBO(195, 182, 255, 1)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
