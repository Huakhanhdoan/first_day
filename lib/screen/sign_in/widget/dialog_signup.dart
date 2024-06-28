import 'package:first_day/components/custom_button.dart';
import 'package:first_day/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../router/app_router.dart';


void dialogSignup(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    // Người dùng không thể tắt dialog bằng cách nhấn ngoài
    builder: (BuildContext context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // Sử dụng không gian nhỏ nhất có thể
            children: [
              SvgPicture.asset('assets/icon/loading_signin.svg'),
              // Thay 'assets/images/your_image.svg' bằng đường dẫn tới hình ảnh SVG của bạn
              const SizedBox(height: 20),
              // Khoảng cách giữa hình ảnh và biểu tượng loading
              Text(
                'Welcome back!',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: color_primary,
                  ),
                ),
              ),
              Text(
                "You have successfully reset and created a new password.",
                style: text_normal,
                textAlign: TextAlign.center,
              ),
             CustomButton(onPressed: () {
               Navigator.pop(context);
               Navigator.pushNamedAndRemoveUntil(
                 context,
                  AppRoutes.home,
                     (Route<dynamic> route) => false,);
             }, text: "", color: Colors.orange.shade300,),
              // Biểu tượng loading
            ],
          ),
        ),
      );
    },
  );

  // Tắt dialog sau 2 giây
}
