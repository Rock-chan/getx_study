import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslationService extends Translations {
  static final fallbackLocale = Locale('en', 'US'); // 默认语言

  static final locales = [
    Locale('en', 'US'),
    Locale('zh', 'CN'),
    Locale('zh_Hans_CN'),
  ]; // 支持的语言列表

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS, // 从 en_US.json 中获取翻译内容
    'zh_CN': zhCN, // 从 zh_CN.json 中获取翻译内容
    'zh_Hans_CN': zhHansCN,
  };

  Map<String, String> get enUS => {
    'title': 'Hello',
    'greeting': 'Welcome to my app!',
  };

  Map<String, String> get zhCN => {
    'title': '你好嗎',
    'greeting': '歡迎來到我的應用！',
  };

  Map<String, String> get zhHansCN => {
    'title':'你好',
    'greeting': '欢迎来到我的应用！',
  };

  Future<void> init() async {
    dynamic locale = await _getLocaleFromStorage();
    if (locale != null) {
      // 如果之前有保存过语言设置，则将当前语言设置为保存的语言
      Get.updateLocale(Locale(locale));
    } else {
      // 否则，根据设备的默认语言设置来设置当前语言
      Get.updateLocale(Get.deviceLocale!);
    }
    print(Get.deviceLocale);
  }

  Future<dynamic> _getLocaleFromStorage() async {
    final box = await GetStorage().read('appBox');
    return box?.read('locale');
  }
}
