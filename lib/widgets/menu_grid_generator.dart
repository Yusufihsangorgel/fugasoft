import 'package:flutter/material.dart';
import 'package:fugasoft/widgets/calculator_button.dart';
import 'package:fugasoft/widgets/menu_button.dart';

class MenuGridGenerator {
  static List<Widget> getMenuButtonList() {
    return [
      MenuButton(
          text: "Schulengen", onPressed: () {}, icon: Icons.folder_outlined),
      MenuButton(
          text: "Arbeitszeit",
          onPressed: () {},
          icon: Icons.person_outline_sharp),
      MenuButton(
          text: "Live Support",
          onPressed: () {},
          icon: Icons.support_agent_sharp),
      MenuButton(
          text: "Shop", onPressed: () {}, icon: Icons.shopping_basket_outlined),
      MenuButton(
          text: "Desktop", onPressed: () {}, icon: Icons.desktop_windows),
      MenuButton(text: "Beenden", onPressed: () {}, icon: Icons.clear),
    ];
  }
}
