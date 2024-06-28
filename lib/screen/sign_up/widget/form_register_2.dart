
import 'package:first_day/screen/sign_in/widget/check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/styles.dart';


class FormRegister2 extends StatefulWidget {
  const FormRegister2({super.key});

  @override
  State<FormRegister2> createState() => _FormRegister2State();
}

class _FormRegister2State extends State<FormRegister2> {
  bool _obscureText = true; // Biến để theo dõi trạng thái hiện/tắt của mật khẩu
  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.bold,
                color: Colors.black),
            decoration: const InputDecoration(
                labelText: 'Username',

                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 0.5,
          color: color_primary,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else if (!RegExp(
                r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
              ).hasMatch(value)) {
                return 'Please enter a valid email';
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
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            obscureText: _obscureText, // Sử dụng biến _obscureText
            decoration: InputDecoration(
              labelText: 'Password',
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
        SizedBox(
          width: MediaQuery.of(context).size.width/2,
          child: const CheckBox(),
        ),
      getContainer("Contiue with Google", SvgPicture.asset('assets/icon/google.svg')),
        getContainer("Contiue with Apple", const Icon(Icons.apple)),
      ],
    );
  }
 Widget getContainer(String text, Widget icon) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(4.0), // Chỉnh độ cao của hiệu ứng bóng
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black)
        ),
        onPressed: () {
        },
        child:  SizedBox(
          width:  MediaQuery.of(context).size.width / 1.4,
          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                   Text(text),
                ],
              ),
        ),
      ),
    );

  }
}
