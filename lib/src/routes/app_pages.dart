// App Pages

import 'package:frontbit_boiler_plate/src/view/home/binding/home_binding.dart';
import 'package:frontbit_boiler_plate/src/view/home/view/home_view.dart';
import 'package:frontbit_boiler_plate/src/view/introduce/binding/introduce_binding.dart';
import 'package:frontbit_boiler_plate/src/view/introduce/view/introduce_view.dart';
import 'package:frontbit_boiler_plate/src/view/splash/binding/splash_binding.dart';
import 'package:frontbit_boiler_plate/src/view/splash/view/splash_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashView(),
      binding: SplashBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.INTRODUCE_SCREEN,
      page: () => const IntroduceView(),
      binding: IntroduceBinding(),
      transition: Transition.cupertino,
    ),
  ];
}
