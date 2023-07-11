import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffAllNamedPageSecond extends StatelessWidget {
  const OffAllNamedPageSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Off All Named Page Second"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAllNamed("/home");
          },
          child: const Text("off all name to Home Screen"),
        ),
      ),
    );
  }
}
