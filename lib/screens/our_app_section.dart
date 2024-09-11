import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/our_app_section_controller.dart';

import '../data/universal_data.dart';

class OurAppSection extends StatelessWidget {
  const OurAppSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine the current screen width
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 426;

    return GetBuilder<OurAppSectionController>(
      builder: (controller) {
        List<Widget> content = [
          for (int index = 0; index < appDatesList.length; index++)
            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse(
                    appDatesList[index].genztAppLink,
                  ),
                );
              },
              child: SizedBox(
                height: isMobile ? 250 : null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 2.7, 8.5, 2.7),
                      width: 36,
                      height: 36,
                      child: SizedBox(
                        width: 27,
                        height: 30.6,
                        child: SvgPicture.network(
                          appDatesList[index].genztAppImage!,
                        ),
                      ),
                    ),
                    Text(
                      appDatesList[index].genztAppName,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth < 650 ? 20 : 30,
                        color: const Color(0xFFF5F5F5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ];
        return Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: screenWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFF9FD65),
                Color(0xFFFCBB33),
                Color(0xFFFF7A00),
              ]),
            ),
            child: SizedBox(
              width: screenWidth,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: isMobile ? 24 : screenWidth * 82 / 1440,
                ),
                child: isMobile
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [...content],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...content,
                        ],
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
