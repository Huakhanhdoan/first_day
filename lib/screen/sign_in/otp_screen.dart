import 'package:first_day/router/app_router.dart';
import 'package:first_day/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../components/custom_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _otpControllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _otpFocusNodes =
      List.generate(6, (index) => FocusNode());
int _time = 60;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Stream<int> timerStream = Stream.periodic(const Duration(seconds: 1), (_) => 1);
    timerStream.listen((_) {
      setState(() {
        if (_time > 0) {
          _time--;
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'You’ve got mail 📩',
              style: text_title,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "We have sent the OTP verification code to your email address. Check your email and enter the code below.",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _otpControllers[index],
                      focusNode: _otpFocusNodes[index],
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(),
                        fillColor:
                            Colors.purpleAccent, // Đặt màu nền cho node hiện tại
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty && index < 5) {
                          _otpFocusNodes[index + 1].requestFocus();
                        }
                      },
                    ),
                  ),
                );
              }),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't receive email?", style: TextStyle(fontSize: 14),),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("You can resend code in ", style: TextStyle(fontSize: 14),),
                Text("$_time", style:  TextStyle(fontSize: 14, color: color_primary),),
                const Text(' s', style:TextStyle(fontSize: 14),),
              ],
            ),
          ),
          const Spacer(),
          Container(
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.creat_new_password,);
                  },
                  text: "",
                  color: Colors.orange.shade300,
                ),
              ))
        ],
      ),
    );
  }
}
