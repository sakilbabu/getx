import 'package:get/get.dart';

class MyHomePageController extends GetxController {
  final api = Get.put(BoringApi());
  String activity = "johny dep";
  String? error;
  getActivity() async {
    try {
      activity = await api.getActivity();
    } catch (e) {
      error = e.toString();
    }
    update();
  }
}

class BoringApi extends GetConnect {
  Future<String> getActivity() async {
    final response = await get('http://www.boredapi.com/api/activity');
    return response.body['activity'];
  }
}
