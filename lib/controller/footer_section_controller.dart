import 'package:get/state_manager.dart';

class FooterSectionController extends GetxController {
  void Refresh() {
    update();
  }

  String? hoveredText;
  int hoveredIndex = -1;

  void onHoverIcon(int index, bool isHovering) {
    hoveredIndex = isHovering ? index : -1;
    update(); // Update the GetBuilder
  }


  void setHoveredText(String text) {
    hoveredText = text;
    update();
  }

  void clearHoveredText() {
    hoveredText = null;
    update();
  }
}
