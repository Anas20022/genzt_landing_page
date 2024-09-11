import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gen_zt_landingpage/data/universal_data.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controller/footer_section_controller.dart';
import '../widget/hover_text_fotter.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder<FooterSectionController>(
      builder: (controller) {
        List<Widget> middelFooter = [
          SelectableText(
            landingPageData.genZT_LandingData_Footer_SocialMediaText,
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: const Color(0xffFF7A00),
                    fontSize: screenWidth < 768 ? 15 : 20,
                    fontWeight: FontWeight.w700)),
          ),
          for (int index = 0; index < socialMediaList.length; index++)
            HoverTextFooter(
                text: socialMediaList[index].name,
                isHovered:
                    controller.hoveredText == socialMediaList[index].name,
                onTap: () {
                  launchUrl(
                    Uri.parse(
                      socialMediaList[index].link,
                    ),
                  );
                }),
        ];
        List<Widget> rightFooter = [
          SelectableText(
            landingPageData.genZT_LandingData_Footer_SocialMedia_SupportText,
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: const Color(0xffFF7A00),
                    fontSize: screenWidth < 768 ? 15 : 20,
                    fontWeight: FontWeight.w700)),
          ),
          HoverTextFooter(
              text: landingPageData
                  .genZT_LandingData_Footer_SocialMedia_OurClientsText,
              isHovered: controller.hoveredText ==
                  landingPageData
                      .genZT_LandingData_Footer_SocialMedia_OurClientsText,
              onTap: () {}),
          HoverTextFooter(
              text: landingPageData
                  .genZT_LandingData_Footer_SocialMedia_ContactUsText,
              isHovered: controller.hoveredText ==
                  landingPageData
                      .genZT_LandingData_Footer_SocialMedia_ContactUsText,
              onTap: () {}),
        ];

        return Container(
          width: Get.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff1C3D54),
                Color(0xff132E4A),
                Color(0xff0B1B2B),
              ])),
          child: screenWidth > 426
              ? Padding(
                  padding: EdgeInsets.only(left: screenWidth * 55.0 / 1440),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenWidth * 102 / 1440,
                            bottom: screenWidth * 147 / 1440),
                        child: Image.network(
                          landingPageData.genZT_LandingData_Footer_Logo!,
                          scale: screenWidth < 768
                              ? 1.9
                              : screenWidth < 1024
                                  ? 1.3
                                  : 1,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth < 480
                            ? screenWidth * 220 / 1440
                            : screenWidth < 768
                                ? screenWidth * 370 / 1440
                                : screenWidth < 1024
                                    ? screenWidth * 440 / 1440
                                    : screenWidth * 560 / 1440,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenWidth * 131 / 1440.0,
                            bottom: screenWidth * 177.5 / 1440.0),
                        child: SizedBox(
                          height: 209,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...middelFooter,
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth < 480
                            ? screenWidth * 60 / 1440
                            : screenWidth < 768
                                ? screenWidth * 80 / 1440
                                : screenWidth < 1024
                                    ? screenWidth * 80 / 1440
                                    : screenWidth * 115 / 1440,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenWidth * 131 / 1440.0,
                            bottom: screenWidth * 262 / 1440.0),
                        child: SizedBox(
                          height: 125,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...rightFooter,
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Column(children: [
                  Image.network(
                    landingPageData.genZT_LandingData_NavBar_Logo!,
                    scale: .55,
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  SizedBox(
                    height: 206,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [...middelFooter],
                    ),
                  ),
                  const SizedBox(
                    height: 56,
                  ),
                  SizedBox(
                    height: 126,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [...rightFooter],
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Container(
                    height: 30,
                    width: Get.width,
                    color: const Color(0xff275896),
                    child: Center(
                      child: SelectableText(
                        "Technologies Innovators. All rights reserved",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 12, color: Colors.white)),
                      ),
                    ),
                  )
                ]),
        );
      },
    );
  }
}
