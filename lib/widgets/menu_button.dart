import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function() onPressed;
  const MenuButton(
      {Key? key, required this.text, required this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        height: Get.height * 0.1,
        width: Get.width * 0.2,
        child: Center(
          child: ListTile(
            title: Icon(icon,color: Colors.black,size: Get.height * 0.02,),
            subtitle: Text(
              
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: Get.height * 0.014,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),),
          ),
        )
      ),
    );
  }
}
