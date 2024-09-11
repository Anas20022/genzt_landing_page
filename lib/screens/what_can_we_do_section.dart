import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/what_can_we_do_section_controller.dart';
import '../data/universal_data.dart';

import '../widget/custom_text_form_field_widget.dart';

class WhatCanWeDoSection extends StatelessWidget {
  const WhatCanWeDoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth < 768;
    return GetBuilder<WhatCanWeDoSectionController>(
      builder: (controller) {
        List<Widget> leftContent = [
          Container(
            width: isTablet ? screenWidth : screenWidth * 811 / 1440,
            height: isTablet ? 857 : 1180,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Color(0xffF9EF5A), Color(0xffFF7A00)])),
            child: Padding(
              padding: EdgeInsets.only(
                  left: isTablet
                      ? screenWidth * 15.0 / 1440
                      : screenWidth * 34.0 / 1440,
                  right: isTablet
                      ? screenWidth * 15.0 / 1440
                      : screenWidth * 34.0 / 1440,
                  top: 20,
                  bottom: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SelectableText(
                        landingPageData
                            .genZT_LandingData_ContactUsSection_TitleText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: isTablet ? 30 : 50,
                            color: const Color(0xff10162F),
                            fontWeight: FontWeight.w500),
                      ),
                      SelectableText(
                        landingPageData
                            .genZT_LandingData_ContactUsSection_SubtitleText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: isTablet ? 18 : 26,
                            color: const Color(0xff241F3C),
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                  Form(
                    key: controller.formKey,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: isTablet ? 18 : 40,
                      runSpacing: isTablet ? 22 : 31,
                      children: [
                        CustomTextField(
                          onSaved: (input) => controller.contactUsRequest
                                  .genZT_ContactUs_YourName_TextField =
                              input ?? 'N/A',
                          hintText: whatCanWeDoData
                              .genZT_ContactUs_YourName_TextField,
                        ),
                        CustomTextField(
                          onSaved: (input) => controller.contactUsRequest
                              .genZT_ContactUs_Email_TextField = input ?? 'N/A',
                          hintText:
                              whatCanWeDoData.genZT_ContactUs_Email_TextField,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        CustomTextField(
                          onSaved: (input) => controller.contactUsRequest
                                  .genZT_ContactUs_Reason_TextField =
                              input ?? 'N/A',
                          hintText:
                              whatCanWeDoData.genZT_ContactUs_Reason_TextField,
                          keyboardType: TextInputType.phone,
                        ),
                        CustomTextField(
                          onSaved: (input) => controller.contactUsRequest
                              .genZT_ContactUs_Phone_TextField = input ?? 'N/A',
                          hintText:
                              whatCanWeDoData.genZT_ContactUs_Phone_TextField,
                          keyboardType: TextInputType.phone,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: isTablet
                                  ? screenWidth * 300 / 768
                                  : screenWidth * 344 / 1440,
                              child: TextFormField(
                                validator: (input) {
                                  return (input!.trim().isNotEmpty)
                                      ? null
                                      : '* Required Field';
                                },
                                onSaved: (input) => controller.contactUsRequest
                                        .genZT_ContactUs_Message_TextField =
                                    input ?? 'N/A',
                                textAlignVertical: TextAlignVertical.top,
                                cursorColor: const Color(0xff10375C),
                                maxLines: null,
                                minLines: null,
                                expands: true,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(7),
                                        borderSide: const BorderSide(
                                            color: Color(0xff000433))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(7),
                                        borderSide: const BorderSide(
                                            color: Color(0xff000433))),
                                    hintText: whatCanWeDoData
                                        .genZT_ContactUs_Message_TextField,
                                    hintStyle: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff10375C)))),
                              ),
                            ),
                            SelectableText(
                              landingPageData
                                  .genZT_ContactUs_RequiredField_Text,
                              style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                color: Color(0xff10375C),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      controller.postRequestProcess();
                      Get.find<WhatCanWeDoSectionController>().refresh();
                    },
                    child: Container(
                      width: isTablet ? 154 : 339,
                      height: isTablet ? 56 : 76,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF78620),
                      ),
                      child: Center(
                        child: Text(
                          landingPageData.genZT_ContactUs_ButtonText,
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff10375C),
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ];
        return Padding(
          padding: const EdgeInsets.only(top: 57.0),
          child: Container(
            // color: Colors.red,
            child: isTablet
                ? Column(
                    children: [
                      Container(
                          padding:
                              EdgeInsets.only(bottom: screenWidth * 21 / 368),
                          width: screenWidth * 330 / 368,
                          child: Image.network(
                            landingPageData
                                .genZT_LandingData_ContactUsSection_ImageStack0!,
                            alignment: Alignment.center,
                          )),
                      ...leftContent
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...leftContent,
                      Container(
                          width: screenWidth * 592 / 1440,
                          child: Image.network(
                            landingPageData
                                .genZT_LandingData_ContactUsSection_ImageStack0!,
                            alignment: Alignment.center,
                          ))
                    ],
                  ),
          ),
        );
      },
    );
  }
}
