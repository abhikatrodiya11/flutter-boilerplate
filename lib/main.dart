import 'package:flutter/material.dart';
import 'package:frontbit_boiler_plate/global/constants/app_string.dart';
import 'package:frontbit_boiler_plate/global/utils/services/api_response.dart';
import 'package:frontbit_boiler_plate/global/utils/services/end_point.dart';
import 'package:frontbit_boiler_plate/src/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  // Environment Control System
  EndPoint.environment = Environment.staging;

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return GetMaterialApp(
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale(
        'en',
        'US',
      ),
      theme: ThemeData(
        fontFamily: 'DM Sans',
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
