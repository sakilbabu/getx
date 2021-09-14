import 'package:flutter/material.dart';
import 'package:project4/home_page_controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyHomePageController());
    controller.getActivity();
    return Scaffold(
      body: Center(
        child: GetBuilder<MyHomePageController>(
          builder: (controller) => controller.error != null
              ? Text(controller.error!)
              : Text(controller.activity),
        ),
      ),
    );
  }
}
