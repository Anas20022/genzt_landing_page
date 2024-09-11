import 'package:flutter/material.dart';
import 'package:gen_zt_landingpage/data/universal_data.dart';

import 'package:get/get.dart';

import '../controller/hero_section_controller.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    // Determine the current screen width
    final screenWidth = MediaQuery.of(context).size.width;
// Define breakpoints for different devices
    final isMobile = screenWidth < 650;

    return GetBuilder<HeroSectionController>(
      builder: (controller) {
        return SizedBox(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              isMobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth,
                          height: 331,
                          child: Image.network(
                            landingPageData
                                .genZT_LandingData_HeroSection_Image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              bottom: screenWidth * 20 / 360,
                              left: screenWidth * (73 / 1440)),
                          width: screenWidth,
                          // height: Get.height / 2,
                          color: const Color(0xff142C3F),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth,
                                child: SelectableText(
                                  landingPageData
                                      .genZT_LandingData_HeroSection_TitleText,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 48,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 51),
                              SizedBox(
                                width: screenWidth,
                                child: SelectableText(
                                  landingPageData
                                      .genZT_LandingData_HeroSection_SubtitleText,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 54),
                              InkWell(
                                onTap: () {
                                  // Implement your button action here
                                },
                                onHover: (isHovered) {
                                  setState(() => _isHovered = isHovered);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: screenWidth * (148 / 360),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                        offset: const Offset(5, 5),
                                      ),
                                    ],
                                    border: Border.all(
                                      color: _isHovered
                                          ? Colors.white
                                          : const Color(0xffFDA521),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0XFFFDA521),
                                  ),
                                  child: SelectableText(
                                    landingPageData
                                        .genZT_LandingData_HeroSection_ButtonText,
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                    // softWrap: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      width: screenWidth,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            width: screenWidth,
                            height: 1324,
                            child: Image.network(
                              landingPageData
                                  .genZT_LandingData_HeroSection_Image!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              width: screenWidth,
                              height: 643,
                              color: const Color(0X501E3E55),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: screenWidth * (604 / 1440),
                                    child: SelectableText(
                                      landingPageData
                                          .genZT_LandingData_HeroSection_TitleText,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 52,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  //const SizedBox(height: 51),
                                  SizedBox(
                                    width: screenWidth * (604 / 1440),
                                    child: SelectableText(
                                      landingPageData
                                          .genZT_LandingData_HeroSection_SubtitleText,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  //   const SizedBox(height: 54),
                                  InkWell(
                                    onTap: () {
                                      // Implement your button action here
                                    },
                                    onHover: (isHovered) {
                                      setState(() => _isHovered = isHovered);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 70,
                                      width: 182,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            blurRadius: 10,
                                            spreadRadius: 2,
                                            offset: const Offset(5, 5),
                                          ),
                                        ],
                                        border: Border.all(
                                          color: _isHovered
                                              ? Colors.white
                                              : const Color(0xffFDA521),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color(0XFFFDA521),
                                      ),
                                      child: SelectableText(
                                        landingPageData
                                            .genZT_LandingData_HeroSection_ButtonText,
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                          color: Colors.white,
                                        ),
                                        // softWrap: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
