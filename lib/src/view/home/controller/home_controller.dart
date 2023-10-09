//Holds the state of the application and provides an API to access/filter/manipulate that data.
// Its concern is data encapsulation and management.
// It contains logic to structure, validate or compare different pieces of data that we call Domain Logic.
// Model File : A perfect tool to make Models easily.
// https://app.quicktype.io/

import 'dart:developer';
import 'package:frontbit_boiler_plate/global/utils/services/api_client.dart';
import 'package:frontbit_boiler_plate/global/utils/services/api_response.dart';
import 'package:frontbit_boiler_plate/global/utils/services/end_point.dart';
import 'package:get/get.dart';

class IntroduceController extends GetxController {
  ApiResponse getDummyApiResponse = ApiResponse.initial('Initial');

  @override
  void onInit() {
    super.onInit();
    getDummyData();
  }

  Future<void> getDummyData() async {
    getDummyApiResponse = ApiResponse.loading('Loading');
    update();
    try {
      var response = await ApiService().getResponse(
        url: EndPoint.home,
        body: {
          //pass body here
        },
        apiType: APIType.aPost,
      );

      getDummyApiResponse = ApiResponse.complete(response);

      // isFavouriteUnFavouriteList = List.generate(response.data!.length, (index) => false);

      log("RES:  $response");
    } catch (e) {
      log('error..... $e');
      getDummyApiResponse = ApiResponse.error('error');
    }
    update();
  }
}
