import 'package:get/get.dart';
import 'package:getx_usage/getx_routes/page/home_screen.dart';
import 'package:getx_usage/getx_routes/page/off_all_named_page_second.dart';
import 'package:getx_usage/getx_routes/page/off_name_page.dart';
import 'package:getx_usage/getx_routes/page/off_page.dart';
import 'package:getx_usage/getx_routes/page/parameter.dart';
import 'package:getx_usage/getx_routes/page/profile_screen.dart';
import 'package:getx_usage/getx_routes/page/to_page.dart';
import 'package:getx_usage/getx_routes/page/until_page.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(
      name: "/home",
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: "/profile",
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: "/toPage",
      page: () => const ToPage(),
    ),
    GetPage(
      name: "/offPage",
      page: () => const OffPage(),
    ),
    GetPage(
      name: "/offNamedPage",
      page: () => const OffNamePage(),
    ),
    GetPage(
      name: "/offAllNamed",
      page: () => const OffAllNamedPageSecond(),
    ),
    GetPage(
      name: "/parameter",
      page: () => const Parameter(),
    ),
    GetPage(
      name: "/untilPage",
      page: () => const UntilPage(),
    ),
  ];
}
