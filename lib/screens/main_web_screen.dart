import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../controller/main_section_controller.dart';
import '../controller/parent_controller.dart';

import '../data/universal_data.dart';
import '../device_type/device_type_logic.dart';
import 'service_section.dart';
import 'hero_Section.dart';
import 'about_us_section.dart';
import 'our_app_section.dart';
import 'footer_section.dart';
import '../widget/navbar_widget.dart';
import 'our_client_section.dart';
import 'our_mission_and_our_vision_section.dart';
import 'what_can_we_do_section.dart';

class MainWebScreen extends StatelessWidget {
  const MainWebScreen({super.key});

  Widget _currentViewIndex(int index) {
    return switch (MainPartitionState.values[index]) {
      MainPartitionState.heroSection => const HeroSection(),
      MainPartitionState.aboutUsSection => const AboutUSection(),
      MainPartitionState.serviceSection => const ServiceSection(),
      MainPartitionState.ourAppSection => const OurAppSection(),
      MainPartitionState.ourMissionAndOurVisionSection =>
        const OurMissionAndOurVisionSection(),
      MainPartitionState.whatCanWeDo => WhatCanWeDoSection(),
      MainPartitionState.ourClientSection => const OurClientSection(),
      MainPartitionState.footerSection => const FooterSection(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final MainPartitonController controller = Get.put(MainPartitonController());

    // Call urlLinking after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.urlLinking();
    });

    // PRINT
    print('Current Screen Width : ${MediaQuery.sizeOf(context).width}');

    // Send Current
    DeviceTypeLogic().setNewDeviceType(MediaQuery.sizeOf(context).width);

    return Scaffold(
      backgroundColor: const Color(0xFF0B1B2B),
      body: SizedBox.expand(
        child: GetBuilder<ParentController>(
          builder: (context) {
            return Stack(
              children: [
                SizedBox.expand(
                  child: ScrollablePositionedList.builder(
                    itemScrollController: itemScrollController,
                    itemCount: MainPartitionState.values.length,
                    // itemCount: _childrenWidget.length,
                    itemBuilder: (context, index) {
                      return Directionality(
                        textDirection: TextDirection.ltr,
                        child: _currentViewIndex(index),
                      );
                    },
                  ),
                ),
                //  NavbarWidget(updateRoute),
                const NavbarWidget(),
              ],
            );
          },
        ),
      ),
    );
  }
}
