import 'package:get/get.dart';

class CounterController2 extends GetxController{
  int count = 0;

  void increment(){
    count++;
    update();
  }

}