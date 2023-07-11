import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_usage/getx_routes/page/home_screen.dart';

class OffPage extends StatelessWidget {
  const OffPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Off Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.off(const HomeScreen());
          },
          child: const Text("Click here to back home page"),
        ),
      ),
    );
  }
}
