// A function is a subset of an algorithm that is logically separated and reusable.

import 'package:flutter/material.dart';
import 'package:frontbit_boiler_plate/global/constants/app_asset.dart';

Column splashView() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Image.asset(
          AppAsset.logo,
          height: 160,
          width: 140,
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}
