import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_usage/getx_controller2/counter_controller2.dart';

void main() {
  Get.put(CounterController2());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Demo'),
        ),
        body: Center(
          child: GetBuilder<CounterController2>(
            builder: (controller) => Text(
              'Count: ${controller.count}',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // Get.find<CounterController2>().increment();
            Get.dialog(Text("data"));
          },
        ),
      ),
    );
  }
}
