import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'dart:html' as html;

import '../data/universal_data.dart';


class MainPartitonController extends GetxController {

  void updateRoute(String newRoute) {
    html.window.history.pushState({}, '', newRoute);
  }

  void urlLinking() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      String currentUrl = html.window.location.href;
      int scrollIndex = 0;

      if (currentUrl.contains("Our_Services_section")) {
        scrollIndex = 3;
      }  else if (currentUrl.contains("About_Us_Section")) {
        scrollIndex = 2;
      } else {
        updateRoute("Hero_section");
      }

      Future.delayed(const Duration(milliseconds: 100), () {
        scrollAction(scrollIndex);
      });
    });
  }
}
