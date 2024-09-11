import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/app_model.dart';
import '../model/can_we_do_for_you_model.dart';
import '../model/landing_page_data_model.dart';
import '../model/our_cleint_model.dart';
import '../model/services_model.dart';
import '../model/social_media_model.dart';


final ItemScrollController itemScrollController = ItemScrollController();

void scrollAction(int index) {
  itemScrollController.scrollTo(
    index: index,
    duration: const Duration(milliseconds: 600),
  );
}

enum MainPartitionState {
  heroSection,
  aboutUsSection,
  serviceSection,
  ourAppSection,
  ourMissionAndOurVisionSection,
  whatCanWeDo,
  ourClientSection,
  footerSection,
}

//-----------------------------------------------------------------------//

// ^ 1. Landing page data.
LandingPageDataModel landingPageData = LandingPageDataModel.fromJson({});

//^ 2. App Data List.
List<AppModel> appDatesList = [];

// ^ 3. Completed List
List<ServicesModel> servicesList = [];

// ^ 4. whatCanWeDoData .
  WhatCanWeDoModel whatCanWeDoData = WhatCanWeDoModel.fromJson({});

// ^ 6. WhatCanWeDoModel
List<WhatCanWeDoModel> whatCanWeDoList = [];

// ^ 5. About Description
List<OurCleintModel> ourCleintList = [];

// ^ 7. Social Media Data list.
List<SocialMediaModel> socialMediaList = [];

// ^ 8. Meta Data
//List<MetaDataModel> metaDataList = [];

List<String> navbarItems = [
  landingPageData.genZT_LandingData_NavBar_HomeText,
  landingPageData.genZT_LandingData_NavBar_AboutUsText_frame,
  landingPageData.genZT_LandingData_NavBar_OurServicesText,
  landingPageData.genZT_LandingData_NavBar_ButtonText,
];

// ^ Network global data.
String networkToken = '';
