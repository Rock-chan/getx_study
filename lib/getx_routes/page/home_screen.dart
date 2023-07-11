import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_usage/getx_routes/page/off_all_page_first.dart';
import 'package:getx_usage/getx_routes/page/off_page.dart';
import 'package:getx_usage/getx_routes/page/profile_screen.dart';
import 'package:getx_usage/getx_routes/page/to_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            // 导航到一个新的页面，并将其添加到导航堆栈
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ToPage());
              },
              child: const Text("Get.to()"),
            ),
            // 导航到一个新页面，替换当前页面，并将其添加到堆栈中
            ElevatedButton(
              onPressed: () {
                Get.off(() => const OffPage());
              },
              child: const Text("Get.off()"),
            ),
            // 导航到一个新的页面，并清除导航堆栈中的所有先前页面
            ElevatedButton(
              onPressed: () {
                Get.to(() => const OffAllPageFirst());
              },
              child: const Text("Get.offAll()"),
            ),
            // 返回上一个页面
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ProfileScreen());
              },
              child: const Text("Get.back()"),
            ),
            // 返回到导航堆栈中的指定页面
            ElevatedButton(
              onPressed: () {
                Get.until((route) => route.settings.name == '/untilPage');
              },
              child: const Text("Get.until()"),
            ),
            // 通过路由名称导航到一个新的页面，并替换当前页面
            ElevatedButton(
              onPressed: () {
                Get.offNamed("/offNamedPage");
              },
              child: const Text("Get.offName()"),
            ),
            // 通过路由名称导航到一个新的页面，并清除导航堆栈中的所有先前页面
            ElevatedButton(
              onPressed: () {
                Get.to(() => const OffAllPageFirst());
              },
              child: const Text("Get.offAllNamed()"),
            ),
            // 获取路由参数
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/parameter?id=123");
              },
              child: const Text("Get.parameters"),
            ),
          ],
        ),
      ),
    );
  }
}
