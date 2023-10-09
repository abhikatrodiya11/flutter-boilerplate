//Views are all the Widgets and Pages within the Flutter Application.
// These views may contain a “view controller” themselves,
// but that is still considered part of the view application tier.

import 'package:flutter/material.dart';
import 'package:frontbit_boiler_plate/global/constants/app_color.dart';
import 'package:frontbit_boiler_plate/src/view/splash/component/splash_component.dart';
import 'package:frontbit_boiler_plate/src/view/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashView extends GetWidget<IntroduceController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: splashView(),
    );
  }
}
