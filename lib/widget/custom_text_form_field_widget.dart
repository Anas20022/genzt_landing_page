import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final int maxLines;
  final TextInputType keyboardType;
  final Color borderColor;
  final Color hintTextColor;
  Function(String?)? onSaved;

  CustomTextField({
    Key? key,
    required this.hintText,
    this.controller,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.borderColor = const Color(0xff000433),
    this.hintTextColor = const Color(0xff10375C),
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth < 768;
    final isMobile = screenWidth < 424;
    return SizedBox(
      width: isMobile
          ? 165
          : isTablet
              ? screenWidth * 240 / 700
              : 351,
      child: TextFormField(
        validator: (input) {
          return (input!.trim().isNotEmpty) ? null : '* Required Field';
        },
        onSaved: onSaved,
        controller: controller,
        cursorColor: hintTextColor,
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: borderColor),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.lato(
            textStyle: TextStyle(
              fontSize: 18,
              color: hintTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
