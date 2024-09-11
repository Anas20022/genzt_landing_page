import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gen_zt_landingpage/data/universal_data.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/our_mission_and_our_vision_section_controller.dart';

class OurMissionAndOurVisionSection extends StatelessWidget {
  const OurMissionAndOurVisionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMpbile = screenWidth < 426;
    return GetBuilder<OurMissionAndOurVisionSectionController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 33, top: 60),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 48,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xff1E3848),
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey)),
                width: 742,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 24, 50, 67),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.network(
                            landingPageData
                                .genZT_MissionSection_TitleText_Icon_Frame!,
                            height: isMpbile ? 29 : null,
                            width: isMpbile ? 29 : null,
                          ),
                          SelectableText(
                            landingPageData
                                .genZT_MissionSection_TitleText_Frame,
                            style: TextStyle(
                                fontSize: screenWidth < 425
                                    ? 22
                                    : screenWidth < 768
                                        ? 40
                                        : 50,
                                fontFamily: "Inter",
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SelectableText(
                        landingPageData.genZT_MissionSection_SubtitleText_Frame,
                        style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                                fontSize: screenWidth < 425 ? 15 : 26,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 178),
                decoration: BoxDecoration(
                    color: const Color(0xff1E3848),
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey)),
                width: 592,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 24, 50, 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.network(
                            landingPageData
                                .genZT_MissionSection_TitleText_Icon_Frame!,
                            height: isMpbile ? 29 : null,
                            width: isMpbile ? 29 : null,
                          ),
                          SelectableText(
                            landingPageData.genZT_VisionSection_TitleText_Frame,
                            style: TextStyle(
                                fontSize: screenWidth < 425
                                    ? 22
                                    : screenWidth < 768
                                        ? 40
                                        : 50,
                                fontFamily: "Inter",
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SelectableText(
                        landingPageData.genZT_VisionSection_SubtitleText,
                        style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                                fontSize: screenWidth < 425 ? 15 : 26,
                                color: Colors.white)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
