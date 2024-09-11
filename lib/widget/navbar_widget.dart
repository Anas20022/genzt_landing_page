import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/main_section_controller.dart';
import '../data/universal_data.dart';
import 'hoverwidget.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int _selectedIndex = -1;
  bool _isHovered = false;

  void _handleHoverChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Determine the current screen width
    final screenWidth = MediaQuery.of(context).size.width;
// Define breakpoints for different devices
    final isMobile = screenWidth < 650;

    return GetBuilder<MainPartitonController>(
        init: MainPartitonController(),
        builder: (controller) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0XFF0B1B2B),
                  Color(0XFF193B5E),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            width: screenWidth,
            height: 100,
            child: Row(
              mainAxisAlignment: MediaQuery.of(context).size.width > 650
                  ? MainAxisAlignment.spaceAround
                  : MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width:
                        isMobile ? screenWidth * 0.1857 : screenWidth * 0.0854,
                    child: Image.network(
                        landingPageData.genZT_LandingData_NavBar_Logo!)),
                MediaQuery.of(context).size.width > 650
                    ? SizedBox(
                        width: screenWidth * (800 / 1440),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(),
                            // ^ Home
                            HoverAbleSelectableText(
                              fontFamilyText: 'Inter',
                              text: landingPageData
                                  .genZT_LandingData_NavBar_HomeText,
                              index: 0,
                              selectedIndex: _selectedIndex,
                              onHoverChange: _handleHoverChange,
                              onTap: () {
                                scrollAction(
                                    MainPartitionState.heroSection.index);
                                controller.updateRoute("Hero_section");
                              },
                              url: 'Hero_section',
                            ),
                            const Spacer(),
                            //    SizedBox(width: screenWidth * (60 / 1440)),
                            // ^ About Us
                            HoverAbleSelectableText(
                              fontFamilyText: 'Inter',
                              text: landingPageData
                                  .genZT_LandingData_NavBar_AboutUsText_frame,
                              index: 3,
                              selectedIndex: _selectedIndex,
                              onHoverChange: _handleHoverChange,
                              onTap: () {
                                scrollAction(
                                    MainPartitionState.aboutUsSection.index);
                                controller.updateRoute("About_Us_Section");
                              },
                              url: 'About_Us_Section',
                            ),
                            const Spacer(),
                            //  SizedBox(width: screenWidth * (60 / 1440)),
                            // ^  Our Services
                            HoverAbleSelectableText(
                              fontFamilyText: 'Inter',
                              text: landingPageData
                                  .genZT_LandingData_NavBar_OurServicesText,
                              index: 1,
                              selectedIndex: _selectedIndex,
                              onHoverChange: _handleHoverChange,
                              onTap: () {
                                scrollAction(
                                    MainPartitionState.ourClientSection.index);
                                controller.updateRoute("Our_Services_section");
                              },
                              url: 'Our_Services_section',
                            ),
                            const Spacer(),
                            //   SizedBox(width: screenWidth * (60 / 1440)),
                            // ^ Contact Us bottom

                            isMobile
                                ? const SizedBox(
                                    width: 0,
                                  )
                                : InkWell(
                                    onTap: () {
                                      scrollAction(
                                          MainPartitionState.whatCanWeDo.index);
                                    },
                                    onHover: (isHovered) {
                                      setState(() => _isHovered = isHovered);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 38,
                                      width: 134,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: _isHovered
                                              ? Colors.white
                                              : const Color(0xFFFF7A00),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        landingPageData
                                            .genZT_LandingData_NavBar_ButtonText,
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
                      )
                    : SizedBox(
                        width: screenWidth * (250 / 1440),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                    titlePadding: EdgeInsets.zero,
                                    title: "",
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        for (int index = 0;
                                            index < navbarItems.length;
                                            index++)
                                          InkWell(
                                            onTap: () {
                                              if (index == 0) {
                                                scrollAction(MainPartitionState
                                                    .heroSection.index);
                                              }
                                              if (index == 1) {
                                                scrollAction(MainPartitionState
                                                    .aboutUsSection.index);
                                              }
                                              if (index == 2) {
                                                scrollAction(MainPartitionState
                                                    .serviceSection.index);
                                              }
                                              if (index == 3) {
                                                scrollAction(MainPartitionState
                                                    .whatCanWeDo.index);
                                              }
                                            },
                                            child: Text(navbarItems[index]),
                                          ),
                                      ],
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: Color(0xffF78620),
                                  size: 35,
                                )),
                          ],
                        ),
                      ),
              ],
            ),
          );
        });
  }
}
