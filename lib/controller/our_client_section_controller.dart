import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class OurClientSectionController extends GetxController {

ScrollController scrollController = ScrollController();


double scrollOffset  = 0 ;
final double _scrollStep = 440; // Define how much you want to scroll per button press


void scrollNext() {
  scrollOffset += _scrollStep;
  scrollController.animateTo(
      scrollOffset,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  update();
}

void scrollPrevious() {
  scrollOffset -= _scrollStep;
    if (scrollOffset < 0) scrollOffset = 0; // Prevent scrolling to negative offset
  scrollController.animateTo(
      scrollOffset,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  update();
}

  // currentIndexmethod(int value){
  //   scrollOffset = value;
  //   update();
  // }

  void Refresh() {
    update();
  }
}
