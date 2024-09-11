import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/service_section_controller.dart';
import '../data/universal_data.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GetBuilder<ServiceSectionController>(
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.fromLTRB(36, 0, 36, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF0B1B2B),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(screenWidth * (86 / 1440), 103,
                    screenWidth * (86 / 1440), 117),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 109),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 31),
                            child: SelectableText(
                              landingPageData
                                  .genZT_LandingData_ServicesSection_ServicesDescriptionText,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 50,
                                height: 0.9,
                                color: Color(0xFFFF9500),
                              ),
                            ),
                          ),
                          SelectableText(
                            landingPageData
                                .genZT_LandingData_ServicesSection_TitleText,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 50,
                              height: .8,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Wrap(
                      spacing: 50,
                      runSpacing: 62,
                      runAlignment: WrapAlignment.spaceBetween,
                      children: [
                        for (int index = 0;
                            index < servicesList.length;
                            index++)
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0x801E558B),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x33ABBED1),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: SizedBox(
                              width: 299,
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 24, 0, 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 16),
                                            child: SizedBox(
                                              width: 65,
                                              height: 56,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 7, 0, 0),
                                                child: Stack(
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        color:
                                                            Color(0xFFFF9500),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  18),
                                                          topRight:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width: 50,
                                                        height: 49,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: -15,
                                                      top: -7,
                                                      child: SizedBox(
                                                        width: 48,
                                                        height: 48,
                                                        child: Container(
                                                          width: 48,
                                                          height: 48,
                                                          child: Image.network(
                                                            servicesList[index]
                                                                .icon!,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          SelectableText(
                                            servicesList[index].title,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 28,
                                              height: 1.3,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: SelectableText(
                                        servicesList[index].subTitle,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          height: 1.1,
                                          color: Color(0xFFCCCCCC),
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
