import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_usage/getx_controller/counter_controller.dart';

void main() {
  Get.put(CounterController()); // 注册控制器

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final CounterController controller = Get.find(); // 获取控制器实例

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count: ${controller.count.value}',
                style: TextStyle(fontSize: 24),
              ),
            ), // 使用.value来获取可观察变量的值
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => controller.increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
