import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controller/parent_controller.dart';
import 'controller/service_section_controller.dart';
import 'controller/hero_section_controller.dart';
import 'controller/our_app_section_controller.dart';
import 'controller/about_us_section_controller.dart';
import 'controller/footer_section_controller.dart';

import './screens/main_web_screen.dart';
import 'controller/our_client_section_controller.dart';
import 'controller/our_mission_and_our_vision_section_controller.dart';
import 'controller/what_can_we_do_section_controller.dart';
import 'network/networkrequests.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NetWorkRequests().readAllRequests();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onInit: () {
        Get.put<ParentController>(ParentController());
        Get.put<HeroSectionController>(HeroSectionController());
        Get.put<OurAppSectionController>(OurAppSectionController());
        Get.put<AboutUsSectionController>(AboutUsSectionController());
        Get.put<ServiceSectionController>(ServiceSectionController());
        Get.put<OurClientSectionController>(OurClientSectionController());
        Get.put<OurMissionAndOurVisionSectionController>(OurMissionAndOurVisionSectionController());
        Get.put<WhatCanWeDoSectionController>(WhatCanWeDoSectionController());
        Get.put<FooterSectionController>(FooterSectionController());
      },
      title: 'Landing page rival',
      theme: ThemeData(useMaterial3: true),
      home: const MainWebScreen(),
    );
  }
}
