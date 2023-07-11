import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_usage/getx_routes/page/off_all_page_second.dart';

class OffAllPageFirst extends StatelessWidget {
  const OffAllPageFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Off All Page First"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(const OffAllPageSecond());
          },
          child: const Text("Click me to use off all"),
        ),
      ),
    );
  }
}
