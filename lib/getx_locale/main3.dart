import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_usage/getx_locale/message.dart';
import 'package:getx_usage/getx_locale/translation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initServices(); // 初始化翻译服务
  runApp(MyApp());
}

Future<void> initServices() async {
  await Get.putAsync(() => TranslationService().init()); // 初始化翻译服务
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Get.deviceLocale);

    return GetMaterialApp(
      title: 'My App',
      translations: Messages(), // 使用翻译服务
      locale: Get.deviceLocale, // 设置默认语言
      fallbackLocale: Locale("es", "US"),
      supportedLocales: TranslationService.locales, // 支持的语言列表
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'title'.tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'greeting'.tr,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

