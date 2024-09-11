import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../data/universal_data.dart';
import '../device_type/device_type_logic.dart';
import '../model/can_we_do_for_you_model.dart';
import '../network/apiendpoint.dart';
import '../widget/dialogwidget.dart';

class WhatCanWeDoSectionController extends GetxController {
  WhatCanWeDoModel contactUsRequest = WhatCanWeDoModel.empty();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void Refresh() {
    update();
  }

  void postRequestProcess() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var dialogMessage = '';
      final dio = Dio(
        BaseOptions(
          baseUrl: ApiEndPoint.baseUrl,
          connectTimeout: const Duration(seconds: 25),
          receiveTimeout: const Duration(seconds: 20),
          headers: {
            HttpHeaders.acceptHeader: 'application/json',
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.authorizationHeader: 'Bearer $networkToken',
          },
          queryParameters: {'populate': '*'},
        ),
      )
      // #REF: This method will remove @ release mode.
        ..interceptors.add(
          LogInterceptor(
            error: true,
            request: true,
            requestBody: true,
            responseBody: true,
          ),
        );

      await dio
          .post(
        ApiEndPoint.whatCanWeDoEndpoint,
        data: contactUsRequest,
      )
          .then((_) {
        dialogMessage = 'Thanks\nWe will contact with you ';
        formKey.currentState!.reset();
        contactUsRequest = WhatCanWeDoModel.empty();
        return '';
      }).catchError((_) => dialogMessage = 'Please Try again');

      DialogBuilder(
        Get.context!,
        [
          Center(
            child: Text(
              dialogMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: DeviceTypeLogic.currentDeviceType !=
                    DeviceTypesState.mobile.index
                    ? 30
                    : 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'ABeeZee',
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      );
    }
  }

}
