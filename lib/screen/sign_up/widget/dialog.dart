import 'package:first_day/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void showLoadingDialog(BuildContext context) {
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
              SvgPicture.asset('assets/icon/Dialog.svg'),
              // Thay 'assets/images/your_image.svg' bằng đường dẫn tới hình ảnh SVG của bạn
              const SizedBox(height: 20),
              // Khoảng cách giữa hình ảnh và biểu tượng loading
              Text(
                'Successful!',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: color_primary,
                  ),
                ),
              ),
              Text(
                "Please wait a moment, we are preparing for you...",
                style: text_normal,
                textAlign: TextAlign.center,
              ),
              LoadingAnimationWidget.hexagonDots(
                size: 80,
                color: color_primary,
              ),
              // Biểu tượng loading
            ],
          ),
        ),
      );
    },
  );

  // Tắt dialog sau 2 giây
  Future.delayed(Duration(seconds: 2), () {
    Navigator.of(context).pop();
  });
}
