// Simplifies Bindings generation from a single callback.

import 'package:frontbit_boiler_plate/src/view/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class IntroduceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroduceController>(
      () => IntroduceController(),
    );
  }
}
