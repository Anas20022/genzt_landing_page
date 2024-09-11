import 'package:dio/dio.dart';

import '../data/universal_data.dart';

import '../model/app_model.dart';
import '../model/can_we_do_for_you_model.dart';
import '../model/landing_page_data_model.dart';
import '../model/our_cleint_model.dart';
import '../model/services_model.dart';

import '../model/social_media_model.dart';
import './apiendpoint.dart';

class NetWorkRequests {
  final _dio = Dio(
    BaseOptions(
      baseUrl: ApiEndPoint.baseUrl,
      connectTimeout: const Duration(seconds: 25),
      receiveTimeout: const Duration(seconds: 20),
      // headers: {
      //   HttpHeaders.acceptHeader: 'application/json',
      //   HttpHeaders.contentTypeHeader: 'application/json',
      // },
      queryParameters: {'populate': '*'},
    ),
  )..interceptors.add(
      LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        responseBody: true,
      ),
    );

  Future<void> readAllRequests() async {
    // #REF Delete ..interceptors.add(LogInterceptor()) @ Release mode.

    // networkToken = response.data['jwt'];

    // _dio.options.headers = {
    //   'Authorization': 'Bearer $networkToken',
    // };

    await Future.wait(
      [
        _readLandingPageData(),
        _readOurCleintData(),
        _readAppData(),
        _readServicesData(),
        _readWhatCanWeDoData(),
        _readSocialMediaData(),
      ],
    ).then(
      (_) {},
    );
  }

  Future<void> _readLandingPageData() async {
    // PRINT.
    print('DIO authourization is ${_dio.options.headers}');

    var response = await _dio.get('${ApiEndPoint.landingDataEndpoint}/1');

    var responseData = response.data['data'];

    landingPageData = LandingPageDataModel.fromJson(responseData);

    // PRINT
    print(LandingPageDataModel.fromJson(responseData).toString());
  }
  //-----------------------------------------------//

  Future<void> _readOurCleintData() async {
    var response = await _dio.get(ApiEndPoint.ourCleintEndpoint);

    var responseDates = response.data['data'] as List;

    if (responseDates.isNotEmpty) {
      for (var singleResponse in responseDates) {
        ourCleintList = [
          ...ourCleintList,
          OurCleintModel.fromJson(singleResponse),
        ];
        // PRINT
        print(OurCleintModel.fromJson(singleResponse).toString());
      }
      // PRINT.
      print('Response is AboutUsModel: $ourCleintList');
    }
  }
  //-----------------------------------------------//

  Future<void> _readAppData() async {
    var response = await _dio.get(ApiEndPoint.appEndpoint);

    var responseDates = response.data['data'] as List;

    if (responseDates.isNotEmpty) {
      for (var singleResponse in responseDates) {
        appDatesList = [
          ...appDatesList,
          AppModel.fromJson(singleResponse),
        ];
        // PRINT
        print(AppModel.fromJson(singleResponse).toString());
      }
      // PRINT.
      print('Response is AppModel: $appDatesList');
    }
  }
  //-----------------------------------------------//

  Future<void> _readServicesData() async {
    var response = await _dio.get(ApiEndPoint.servicesEndpoint);

    var responseDates = response.data['data'] as List;

    if (responseDates.isNotEmpty) {
      for (var singleResponse in responseDates) {
        servicesList = [
          ...servicesList,
          ServicesModel.fromJson(singleResponse),
        ];
        // PRINT
        print(ServicesModel.fromJson(singleResponse).toString());
      }
      // PRINT.
      print('Response is ServiceSection: $servicesList');
    }
  }
  //-----------------------------------------------//

  Future<void> _readWhatCanWeDoData() async {
    // PRINT.
    print('DIO authourization is ${_dio.options.headers}');

    var response = await _dio.get('${ApiEndPoint.whatCanWeDoEndpoint}/1');

    var responseData = response.data['data'];

    whatCanWeDoData = WhatCanWeDoModel.fromJson(responseData);

    // PRINT
    print(WhatCanWeDoModel.fromJson(responseData).toString());
  }
  //-----------------------------------------------//

  Future<void> _readSocialMediaData() async {
    var response = await _dio.get(ApiEndPoint.socialMediaEndpoint);

    var responseDates = response.data['data'] as List;

    if (responseDates.isNotEmpty) {
      for (var singleResponse in responseDates) {
        socialMediaList = [
          ...socialMediaList,
          SocialMediaModel.fromJson(singleResponse),
        ];
        // PRINT
        print(AppModel.fromJson(singleResponse).toString());
      }
    }
  }




// //-----------------------------------------------//
//   // #REF: Waiting UI/UX to set in application.

//   Future<void> _readColorData() async {
//     var response = await _dio.get('${ApiEndPoint.landingPageColorsEndpoint}/1');

//     var responseData = response.data['data'];

//     // PRINT.
//     print('response Data is $responseData');

//     landingPageColor = LandingPageColorModel.fromJson(responseData);

//     // PRINT
//     print(landingPageColor.toString());
//   }

// //-----------------------------------------------//

// //   // #REF: Waiting backend data.
// //  // Future<void> _readMetaData() async {}

//   //-----------------------------------------------//


}
