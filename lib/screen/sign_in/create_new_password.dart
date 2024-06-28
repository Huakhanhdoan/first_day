import 'package:first_day/screen/sign_in/widget/check_box.dart';
import 'package:first_day/screen/sign_in/widget/dialog_signup.dart';
import 'package:flutter/material.dart';
import '../../components/custom_button.dart';
import '../../utils/styles.dart';
class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {

  bool _obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _obscureText2 = true;
  void _togglePasswordVisibility2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Create new password 🔐",
              style: text_title,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Save the new password in a safe place, if you forget it then you have to do a forgot password again.",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Expanded(child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextFormField(
                  obscureText: _obscureText, // Sử dụng biến _obscureText
                  decoration: InputDecoration(
                    labelText: 'Create a new password',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Chọn icon dựa trên giá trị của _obscureText
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: color_primary,
                      ),
                      onPressed: _togglePasswordVisibility, // Thay đổi trạng thái hiện/tắt khi nhấn vào icon
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.5,
                color: color_primary,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextFormField(
                  obscureText: _obscureText2, // Sử dụng biến _obscureText
                  decoration: InputDecoration(
                    labelText: 'Confirm a new password',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Chọn icon dựa trên giá trị của _obscureText
                        _obscureText2 ? Icons.visibility : Icons.visibility_off,
                        color: color_primary,
                      ),
                      onPressed: _togglePasswordVisibility2, // Thay đổi trạng thái hiện/tắt khi nhấn vào icon
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.5,
                color: color_primary,
              ),
              const CheckBox(),
            ],
          )),
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
                      dialogSignup(context);

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
