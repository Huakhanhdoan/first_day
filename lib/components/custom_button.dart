import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed, required this.text, required this.color,

  });

  final String text;
  final Function() onPressed;
  final Color color;


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(4.0), // Chỉnh độ cao của hiệu ứng bóng
          backgroundColor: MaterialStateProperty.all(color),
            foregroundColor: MaterialStateProperty.all(Colors.purple.shade400)
        ),
        onPressed: () {
          onPressed();
        },
        child:  SizedBox(
          width: screenWidth - 24,
          child: Center(child: Text(text), ),
        ),
      ),
    );
  }
}
