import 'package:get/get.dart';

class MyHomePageController extends GetxController {
  String? greetings;
  Future<String> sayHello(String name) {
    // return Future.delayed(Duration(seconds: 3), () {
    //   return "hello $name";
    // });
    return Future.error("i m error");
  }

  @override
  // void onInit() async {
  //   super.onInit();
  //   print("I am From OnInit");
  //
  // }

  hello() async {
    // try {
    greetings = await sayHello("messi");
    // } catch (e) {
    //   print(e);
    // }
    update();
  }
}
