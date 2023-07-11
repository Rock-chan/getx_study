import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffAllNamedPageFirst extends StatelessWidget {
  const OffAllNamedPageFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Off All Named Page First"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAllNamed("/offAllNamed");
          },
          child: const Text("data"),
        ),
      ),
    );
  }
}
