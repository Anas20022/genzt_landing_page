import 'package:flutter/material.dart';

// import 'dart:html' as html;

class HoverAbleSelectableText extends StatefulWidget {
  final String text;
  final String fontFamilyText;
  final int index;
  final int selectedIndex;
  final ValueChanged<int> onHoverChange;
  final VoidCallback onTap;
  final String url;

  const HoverAbleSelectableText({
    required this.text,
    required this.fontFamilyText,
    required this.index,
    required this.selectedIndex,
    required this.onHoverChange,
    required this.onTap,
    required this.url,
    super.key,
  });

  @override
  _HoverAbleSelectableTextState createState() =>
      _HoverAbleSelectableTextState();
}

class _HoverAbleSelectableTextState extends State<HoverAbleSelectableText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _updateHoverState(true),
      onExit: (_) => _updateHoverState(false),
      child: InkWell(
        onTap: () {
        //  html.window.history.pushState({}, '', widget.url);
          widget.onTap();
        },
        child: Text(
          widget.text,
          style: TextStyle(
            fontFamily: widget.fontFamilyText,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: widget.selectedIndex == widget.index || _isHovered
                ? const Color(0xFFFF7A00)
                : Colors.white
          ),
        ),
      ),
    );
  }

  void _updateHoverState(bool hovering) {
    setState(() {
      _isHovered = hovering;
    });
    widget.onHoverChange(hovering ? widget.index : -1);
  }
}
