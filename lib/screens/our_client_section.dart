import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gen_zt_landingpage/data/universal_data.dart';
import 'package:get/get.dart';

import '../controller/our_client_section_controller.dart';

class OurClientSection extends StatelessWidget {
  const OurClientSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GetBuilder<OurClientSectionController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 95.0 / 1440, vertical: 44),
              child: SelectableText(
                landingPageData.genZT_ClientReviewSection_Text,
                style: TextStyle(
                  fontSize: screenWidth < 768 ? 35 : 50,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Inter",
                  color: Colors.white,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: Get.width * .5,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xffFF7A00),
                    Color(0xffF9EF5A),
                  ])),
                  height: 472,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  // color: Colors.blueAccent,
                  child: SingleChildScrollView(
                    controller: controller.scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 86.0 / 1440),
                      child: Row(
                        children: [
                          for (int index = 0;
                              index < ourCleintList.length;
                              index++)
                            Container(
                              margin: const EdgeInsets.only(right: 24),
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color(0xff234965),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 36.0, top: 36, right: 36, bottom: 50),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.network(ourCleintList[index]
                                            .genZT_ClientReviewSection_Rate ??
                                        ""),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 24.0),
                                      child: SelectableText(
                                        ourCleintList[index]
                                            .genZT_ClientReviewSection_Text,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Inter",
                                            color: Colors.white),
                                      ),
                                    ),
                                    SelectableText(
                                      ourCleintList[index]
                                          .genZT_ClientReviewSection_ClientName,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: "Inter",
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 53.0, top: 10, bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        controller.scrollPrevious();
                      },
                      child: SvgPicture.network(
                          landingPageData.genZT_ClientReviewSection_LeftIcon ??
                              "")),
                  const SizedBox(
                    width: 24,
                  ),
                  InkWell(
                    onTap: () {
                      controller.scrollNext();
                    },
                    child: SvgPicture.network(
                        landingPageData.genZT_ClientReviewSection_RightIcon ??
                            ""),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
