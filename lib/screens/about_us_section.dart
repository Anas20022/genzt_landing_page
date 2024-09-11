import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/about_us_section_controller.dart';
import '../data/universal_data.dart';

class AboutUSection extends StatelessWidget {
  const AboutUSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine the current screen width
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 650;
    return GetBuilder<AboutUsSectionController>(
      builder: (controller) {
        return Align(
          alignment: Alignment.topLeft,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF0B1B2B),
            ),
            child: SizedBox(
              width: screenWidth,
              child: isMobile
                  ? Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: screenWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(landingPageData
                                          .genZT_LandingData_AboutUsSection_imagestack2 ??
                                      ""),
                                ),
                              ),
                              child: Container(
                                width: screenWidth * (629 / 1440),
                                height: 521,
                              ),
                            ),
                            Container(
                              width: screenWidth,
                              margin: const EdgeInsets.only(top: 600),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(landingPageData
                                          .genZT_LandingData_AboutUsSection_imagestack0 ??
                                      ""),
                                ),
                              ),
                              child: Container(
                                width: screenWidth * (629 / 1440),
                                height: 521,
                              ),
                            ),
                            Container(
                              width: screenWidth,
                              margin: const EdgeInsets.only(top: 280),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(landingPageData
                                          .genZT_LandingData_AboutUsSection_imagestack1 ??
                                      ""),
                                ),
                              ),
                              child: Container(
                                width: screenWidth * (629 / 1440),
                                height: 521,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: screenWidth,
                          decoration: const BoxDecoration(
                            gradient: SweepGradient(
                              center: Alignment(0.252, 0.315),
                              startAngle: -4.43,
                              endAngle: 1.86,
                              tileMode: TileMode.repeated,
                              colors: <Color>[
                                Color(0xFFF9EF5A),
                                Color(0xFFFF7A00)
                              ],
                              stops: <double>[0.084, 0.916],
                            ),
                          ),
                          child: SizedBox(
                            width: screenWidth * (638 / 1440),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 55, 0, 213),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 0, 0.4, 48),
                                    child: SelectableText(
                                      landingPageData
                                          .genZT_LandingData_AboutUsSection_TitleText,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 43,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 58.0),
                                    child: SelectableText(
                                      landingPageData
                                          .genZT_LandingData_AboutUsSection_SubtitleText,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 24,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Stack(
                      children: [
                        SizedBox(
                          width: screenWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0, 498, screenWidth * (173 / 1440), 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(landingPageData
                                              .genZT_LandingData_AboutUsSection_imagestack0 ??
                                          ""),
                                    ),
                                  ),
                                  child: Container(
                                    width: screenWidth * (629 / 1440),
                                    height: 521,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  gradient: SweepGradient(
                                    center: Alignment(0.252, 0.315),
                                    startAngle: -4.43,
                                    endAngle: 1.86,
                                    tileMode: TileMode.repeated,
                                    colors: <Color>[
                                      Color(0xFFF9EF5A),
                                      Color(0xFFFF7A00)
                                    ],
                                    stops: <double>[0.084, 0.916],
                                  ),
                                ),
                                child: SizedBox(
                                  width: screenWidth * (638 / 1440),
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 55, 0, 213),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0.4, 48),
                                          child: SelectableText(
                                            landingPageData
                                                .genZT_LandingData_AboutUsSection_TitleText,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 43,
                                              height: 1.3,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 58.0),
                                          child: SelectableText(
                                            landingPageData
                                                .genZT_LandingData_AboutUsSection_SubtitleText,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 24,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: screenWidth * (397 / 1440),
                          top: 119,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(landingPageData
                                    .genZT_LandingData_AboutUsSection_imagestack1!),
                              ),
                            ),
                            child: Container(
                              width: screenWidth * (405 / 1440),
                              height: 631,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  landingPageData
                                      .genZT_LandingData_AboutUsSection_imagestack2!,
                                ),
                              ),
                            ),
                            child: Container(
                              width: screenWidth * (457 / 1440),
                              height: 535,
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
