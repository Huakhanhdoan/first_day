import 'package:first_day/components/custom_button.dart';
import 'package:first_day/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../sign_in/sign_in.dart';
import 'widget/dialog.dart';
import 'widget/form_register.dart';
import 'widget/form_register_2.dart';
import 'widget/list_options_1.dart';
import 'widget/list_options_2.dart';

class LightCreateAccount extends StatelessWidget {
  const LightCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt step = 1.obs;
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Obx(
                    () => LinearProgressIndicator(
                      value: step.value / 4,
                      valueColor: AlwaysStoppedAnimation<Color>(color_primary),
                      backgroundColor: Colors.grey.shade200,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                    () => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    (step.value == 1)
                        ? "What type of account do you like to create? 👦" // Text title
                        : (step.value == 2)
                        ? "Describe a workplace that suits you 💼"
                        : "Create an account ✏️",
                    style: text_bold,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Obx(
                    () => Text(
                  (step.value < 3) // Text description
                      ? "You can skip it if you're not sure."
                      : "Please complete your profile. Don't worry, your data will remain private and only you can see it.",
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
      ),

            Obx(
              () => Expanded(
                child: (step.value == 1)
                    ? const ListOptions1()
                    : (step.value == 2)
                        ? const ListOptions2()
                        : (step.value == 3)
                            ? const FormRegister()
                            : const FormRegister2(),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 0.5,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      onPressed: () {
                        if (step.value == 4) {
                          showLoadingDialog(context);
                          Future.delayed(const Duration(seconds: 2), () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => const SignIn()),
                                  (Route<dynamic> route) => false,);
                          });
                        }
                        step.value++;
                      },
                      text: "",
                      color: Colors.orange.shade300),
                ],
              ),
            ),

          ],
        )
    );
  }
}
