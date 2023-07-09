import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs; // 使用.obs将count变量转换为可观察的

  void increment() {
    count.value++; // 使用.value来访问可观察的变量的值
  }
}
