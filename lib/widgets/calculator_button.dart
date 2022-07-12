import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CalculatorButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: Get.height * 0.1,
      width: Get.width * 0.2,
      child: TextButton(
        onPressed: onPressed,
        child: text == 'x'
            ? Icon(
                Icons.backspace_outlined,
                size: Get.height * 0.03,
                color: Colors.black,
                
              )
            : Text(
                text,
                style: TextStyle(
                  fontSize: Get.height * 0.03,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
      ),
    );
  }
}
