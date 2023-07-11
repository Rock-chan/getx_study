import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffNamePage extends StatelessWidget {
  const OffNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Off Name Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offNamed("/home");
          },
          child: const Text("off name to Home Screen"),
        ),
      ),
    );
  }
}
