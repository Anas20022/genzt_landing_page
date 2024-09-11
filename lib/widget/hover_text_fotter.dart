import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/footer_section_controller.dart';

class HoverTextFooter extends StatelessWidget {
  final String text;
  final bool isHovered;
  final VoidCallback onTap;

  HoverTextFooter({
    super.key,
    required this.text,
    required this.isHovered,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MouseRegion(
      onEnter: (_) => Get.find<FooterSectionController>().setHoveredText(text),
      onExit: (_) => Get.find<FooterSectionController>().clearHoveredText(),
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              decorationColor: Colors.white,
              fontSize:screenWidth<768?14:18,
              color: isHovered ?  const Color(0xffFCBB33) : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
