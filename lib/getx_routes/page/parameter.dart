import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Parameter extends StatelessWidget {
  const Parameter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? userId = Get.parameters['id'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Parameter"),
      ),
      body: Center(
        child: Text(userId!),
      ),
    );
  }
}
