import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_usage/getx_routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      initialRoute: "/home",
      getPages: Routes.routes,
    );
  }
}
