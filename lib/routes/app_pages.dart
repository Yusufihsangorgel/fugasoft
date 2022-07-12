import 'package:fugasoft/pages/home/view/home_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.home;

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      transition: Transition.downToUp,
    ),
  ];
}
