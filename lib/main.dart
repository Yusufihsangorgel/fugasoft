import 'package:flutter/material.dart';
import 'package:fugasoft/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Fugasoft());
}

class Fugasoft extends StatelessWidget {
  const Fugasoft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}