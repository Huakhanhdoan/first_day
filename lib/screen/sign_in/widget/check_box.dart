import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/styles.dart';

class CheckBox extends StatelessWidget {
   const CheckBox({super.key});
  @override
  Widget build(BuildContext context) {
    RxBool checkboxSelected = false.obs;
    return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Obx(
      () => CheckboxListTile(
      fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
      return color_primary; // Màu khi checkbox được chọn
      }
      return Colors.white; // Màu mặc định
      }),
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text('Remember me'),
      value: checkboxSelected.value,
      onChanged: (bool? value) {
      checkboxSelected.value = value ?? false;
      },
      ),
    ),
    );
  }
}
