// Views are all the Widgets and Pages within the Flutter Application.
// These views may contain a “view controller” themselves,
// But that is still considered part of the view application tier.

import 'package:flutter/material.dart';
import 'package:frontbit_boiler_plate/global/constants/app_color.dart';
import 'package:frontbit_boiler_plate/global/constants/app_string.dart';
import 'package:frontbit_boiler_plate/global/utils/services/api_response.dart';
import 'package:frontbit_boiler_plate/src/view/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends GetWidget<IntroduceController> {
  const HomeView({Key? key}) : super(key: key);

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
              if (controller.getDummyApiResponse.status == Status.LOADING) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (controller.getDummyApiResponse.status == Status.ERROR) {
                return const Center(
                  child: Text(
                    AppString.serverError,
                  ),
                );
              }
              var response = controller.getDummyApiResponse.data;

              /// show view from api response
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
