import 'package:get/state_manager.dart';

class ServiceSectionController extends GetxController {
  //  When This Function is called Controller will refresh
  // so Every child widget for GitBuilder<MainController> will rebuild.
  void Refresh() {
    update();
  }
}
