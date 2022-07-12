import 'package:flutter/material.dart';
import 'package:fugasoft/pages/secondPage/view/second_view.dart';
import 'package:fugasoft/widgets/calculator_grid_generator.dart';
import 'package:fugasoft/widgets/menu_grid_generator.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: Get.height * 0.1,
              color: Color.fromARGB(190, 228, 139, 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Image.asset(
                    'images/Logo1.png',
                    height: Get.height * 0.1,
                    width: Get.width * 0.15,
                  ),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        '23:59:41',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: Get.height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        '28 Haziran 2022 Salı',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: Get.height * 0.015,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: Get.width * 0.04,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.25,
                      width: Get.width * 0.4,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(50, 192, 155, 152),
                        image: DecorationImage(
                          image: AssetImage('images/logoframe.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Image.asset(
                        'images/logos.png',
                        fit: BoxFit.contain,
                        height: Get.height * 0.1,
                        width: Get.width * 0.5,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Container(
                      color: Color.fromARGB(150, 224, 142, 18),
                      height: Get.height * 0.315,
                      width: Get.width * 0.36,
                      child: GridView.builder(
                        itemCount: MenuGridGenerator.getMenuButtonList().length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 3,
                          crossAxisCount: 3,
                        ),
                        itemBuilder: ((context, index) {
                          return MenuGridGenerator.getMenuButtonList()[index];
                        }),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.12,
                    )
                  ],
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                Column(children: [
                  Container(
                    color: Colors.red,
                    height: Get.height * 0.065,
                    width: Get.width * 0.41,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'KENNWORT..',
                        labelStyle: TextStyle(
                          fontSize: Get.height * 0.02,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                            width: Get.height * 0.002,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                            width: Get.height * 0.002,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Color.fromARGB(150, 224, 142, 18),
                        height: Get.height * 0.52,
                        width: Get.width * 0.3,
                        child: GridView.builder(
                          itemCount: CalculatorGridGenerator.getCalculatorList()
                              .length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 3,
                            crossAxisCount: 3,
                          ),
                          itemBuilder: ((context, index) {
                            return CalculatorGridGenerator.getCalculatorList()[
                                index];
                          }),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.003,
                      ),
                      Column(
                        children: [
                          Container(
                            height: Get.height * 0.258,
                            width: Get.width * 0.1,
                            color: Colors.orange,
                            child: Center(
                                child: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.clear))),
                          ),
                          SizedBox(
                            height: Get.height * 0.003,
                          ),
                          Container(
                            height: Get.height * 0.258,
                            width: Get.width * 0.1,
                            color: Color.fromARGB(255, 113, 36, 10),
                            child: Center(
                                child: IconButton(
                                    onPressed: () {
                                      Get.to(const SecondView());
                                    },
                                    icon: Icon(
                                      Icons.exit_to_app,
                                      color: Colors.white,
                                    ))),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.13,
                  )
                ]),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
