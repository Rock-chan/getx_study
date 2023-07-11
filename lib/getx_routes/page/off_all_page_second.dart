import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_usage/getx_routes/page/home_screen.dart';

class OffAllPageSecond extends StatelessWidget {
  const OffAllPageSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Off All Page Second"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.off(const HomeScreen());
          },
          child: const Text("Click me to Home Screen"),
        ),
      ),
    );
  }
}
