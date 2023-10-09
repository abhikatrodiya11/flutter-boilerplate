// Views are all the Widgets and Pages within the Flutter Application.
// These views may contain a “view controller” themselves,
// But that is still considered part of the view application tier.

import 'package:flutter/material.dart';
import 'package:frontbit_boiler_plate/global/constants/app_color.dart';
import 'package:frontbit_boiler_plate/src/view/home/controller/home_controller.dart';
import 'package:get/get.dart';

class IntroduceView extends GetWidget<IntroduceController> {
  const IntroduceView({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        children: [
          GetBuilder<IntroduceController>(
            builder: (controller) {
              /// show view from api response
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
