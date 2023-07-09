import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      "title": "Hello",
      "greeting": "Welcome to my app!"
    },
    'zh_Hans_CN': {
      'title': '你好嗎',
      'greeting': '歡迎來到我的應用！',
    },
    'zh_CN':{
      "title": "你好",
      "greeting": "欢迎来到我的应用！"
    }
  };
}
