import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomOptions extends StatelessWidget {
  const CustomOptions({
    super.key,
    this.onPressed, required this.text, required this.icon, required this.color,

  });

  final String text;
  final Widget icon;
  final VoidCallback? onPressed;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MaterialButton(
        onPressed:() {
          onPressed!();
        },
        child:  Container(
          width: MediaQuery.of(context).size.width - 60,
          height: 80,
          decoration:    BoxDecoration(

            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.grey.shade400,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container (
                width: 80,
                height: 80,
                decoration:   BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0), // Bo tròn góc trên trái
                    bottomLeft: Radius.circular(16.0), // Bo tròn góc dưới trái
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      color.withOpacity(1),
                      color.withOpacity(0.8),
                    ],
                    stops: const [0.0, 0.7],
                  ),
                  color: color,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.lerp(color, Colors.grey.shade500, 0.5),

                        ),
                        child: icon),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width -61-80 ,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(text, style: text_bold,),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
