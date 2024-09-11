import '../network/apiendpoint.dart';

class LandingPageDataModel {
  final int id;
  final String genZT_LandingData_NavBar_HomeText;
  final String genZT_LandingData_NavBar_AboutUsText_frame;
  final String genZT_LandingData_NavBar_OurServicesText;
  final String genZT_LandingData_NavBar_ButtonText;
  final String genZT_LandingData_HeroSection_TitleText;
  final String genZT_LandingData_HeroSection_SubtitleText;
  final String genZT_LandingData_HeroSection_ButtonText;
  final String genZT_LandingData_AboutUsSection_TitleText;
  final String genZT_LandingData_AboutUsSection_SubtitleText;
  final String genZT_LandingData_ServicesSection_ServicesDescriptionText;
  final String genZT_LandingData_ServicesSection_TitleText;
  final String genZT_MissionSection_TitleText_Frame;
  final String genZT_MissionSection_SubtitleText_Frame;
  final String genZT_VisionSection_TitleText_Frame;
  final String genZT_VisionSection_SubtitleText;
  final String genZT_LandingData_ContactUsSection_TitleText;
  final String genZT_LandingData_ContactUsSection_SubtitleText;
  final String genZT_ContactUs_YourName_TextField;
  final String genZT_ContactUs_Email_TextField;
  final String genZT_ContactUs_Reason_TextField;
  final String genZT_ContactUs_Phone_TextField;
  final String genZT_ContactUs_Message_TextField;
  final String genZT_ContactUs_RequiredField_Text;
  final String genZT_ContactUs_ButtonText;
  final String genZT_ClientReviewSection_Text;
  final String genZT_LandingData_Footer_SocialMediaText;
  final String genZT_LandingData_Footer_SocialMedia_FacebookText;
  final String genZT_LandingData_Footer_SocialMedia_InstagramText;
  final String genZT_LandingData_Footer_SocialMedia_XText;
  final String genZT_LandingData_Footer_SocialMedia_DiscordText;
  final String genZT_LandingData_Footer_SocialMedia_SupportText;
  final String genZT_LandingData_Footer_SocialMedia_OurClientsText;
  final String genZT_LandingData_Footer_SocialMedia_ContactUsText;

  final String? genZT_LandingData_NavBar_Logo;
  final String? genZT_LandingData_HeroSection_Image;
  final String? genZT_LandingData_AboutUsSection_imagestack0;
  final String? genZT_LandingData_AboutUsSection_imagestack1;
  final String? genZT_LandingData_AboutUsSection_imagestack2;
  final String? genZT_MissionSection_TitleText_Icon_Frame;
  final String? genZT_VisionSection_TitleText_Icon;
  final String? genZT_LandingData_ContactUsSection_ImageStack0;
  final String? genZT_ClientReviewSection_LeftIcon;
  final String? genZT_ClientReviewSection_RightIcon;
  final String? genZT_LandingData_Footer_Logo;

  LandingPageDataModel({
    required this.id,
    required this.genZT_ContactUs_ButtonText,
    required this.genZT_ClientReviewSection_Text,
    required this.genZT_LandingData_NavBar_HomeText,
    required this.genZT_LandingData_NavBar_AboutUsText_frame,
    required this.genZT_LandingData_NavBar_ButtonText,
    required this.genZT_LandingData_HeroSection_TitleText,
    required this.genZT_LandingData_NavBar_OurServicesText,
    required this.genZT_LandingData_HeroSection_SubtitleText,
    required this.genZT_LandingData_HeroSection_ButtonText,
    required this.genZT_LandingData_AboutUsSection_TitleText,
    required this.genZT_LandingData_AboutUsSection_SubtitleText,
    required this.genZT_LandingData_ServicesSection_ServicesDescriptionText,
    required this.genZT_LandingData_ServicesSection_TitleText,
    required this.genZT_MissionSection_TitleText_Frame,
    required this.genZT_MissionSection_SubtitleText_Frame,
    required this.genZT_VisionSection_TitleText_Frame,
    required this.genZT_VisionSection_SubtitleText,
    required this.genZT_LandingData_ContactUsSection_TitleText,
    required this.genZT_LandingData_ContactUsSection_SubtitleText,
    required this.genZT_ContactUs_YourName_TextField,
    required this.genZT_ContactUs_Email_TextField,
    required this.genZT_ContactUs_Reason_TextField,
    required this.genZT_ContactUs_Phone_TextField,
    required this.genZT_ContactUs_Message_TextField,
    required this.genZT_ContactUs_RequiredField_Text,
    required this.genZT_LandingData_Footer_SocialMediaText,
    required this.genZT_LandingData_Footer_SocialMedia_FacebookText,
    required this.genZT_LandingData_Footer_SocialMedia_InstagramText,
    required this.genZT_LandingData_Footer_SocialMedia_XText,
    required this.genZT_LandingData_Footer_SocialMedia_DiscordText,
    required this.genZT_LandingData_Footer_SocialMedia_SupportText,
    required this.genZT_LandingData_Footer_SocialMedia_OurClientsText,
    required this.genZT_LandingData_Footer_SocialMedia_ContactUsText,

    required this.genZT_LandingData_NavBar_Logo,
    required this.genZT_LandingData_HeroSection_Image,
    required this.genZT_LandingData_AboutUsSection_imagestack0,
    required this.genZT_LandingData_AboutUsSection_imagestack1,
    required this.genZT_LandingData_AboutUsSection_imagestack2,
    required this.genZT_MissionSection_TitleText_Icon_Frame,
    required this.genZT_VisionSection_TitleText_Icon,
    required this.genZT_LandingData_ContactUsSection_ImageStack0,
    required this.genZT_ClientReviewSection_LeftIcon,
    required this.genZT_ClientReviewSection_RightIcon,
    required this.genZT_LandingData_Footer_Logo,
  });

  static String? _urlImageDecode(Map<String, dynamic>? imageAttribute) {
    return (imageAttribute != null) && (imageAttribute['data'] != null)
        ? ApiEndPoint.baseUrl + imageAttribute['data']['attributes']['url']
        : null;
  }

  factory LandingPageDataModel.fromJson(Map<String, dynamic> json) {
    return LandingPageDataModel(
      id: json['id'] ?? -1,
        genZT_LandingData_NavBar_HomeText: json['attributes']?['GenZT_LandingData_NavBar_HomeText'] ??'N/A',
        genZT_LandingData_NavBar_AboutUsText_frame: json['attributes']?['GenZT_LandingData_NavBar_AboutUsText_frame'] ??'N/A',
        genZT_LandingData_NavBar_ButtonText: json['attributes']?['GenZT_LandingData_NavBar_ButtonText'] ??'N/A',
        genZT_LandingData_HeroSection_TitleText: json['attributes']?['GenZT_LandingData_HeroSection_TitleText'] ??'N/A',
        genZT_LandingData_NavBar_OurServicesText: json['attributes']?['GenZT_LandingData_NavBar_OurServicesText'] ??'N/A',
        genZT_LandingData_HeroSection_SubtitleText: json['attributes']?['GenZT_LandingData_HeroSection_SubtitleText'] ??'N/A',
        genZT_LandingData_HeroSection_ButtonText: json['attributes']?['GenZT_LandingData_HeroSection_ButtonText'] ??'N/A',
        genZT_LandingData_AboutUsSection_TitleText: json['attributes']?['GenZT_LandingData_AboutUsSection_TitleText'] ??'N/A',
        genZT_LandingData_AboutUsSection_SubtitleText: json['attributes']?['GenZT_LandingData_AboutUsSection_SubtitleText'] ??'N/A',
        genZT_LandingData_ServicesSection_ServicesDescriptionText: json['attributes']?['GenZT_LandingData_ServicesSection_ServicesDescriptionText'] ??'N/A',
        genZT_LandingData_ServicesSection_TitleText: json['attributes']?['GenZT_LandingData_ServicesSection_TitleText'] ??'N/A',
        genZT_MissionSection_TitleText_Frame: json['attributes']?['GenZT_MissionSection_TitleText_Frame'] ??'N/A',
        genZT_MissionSection_SubtitleText_Frame: json['attributes']?['GenZT_MissionSection_SubtitleText_Frame'] ??'N/A',
        genZT_VisionSection_TitleText_Frame: json['attributes']?['GenZT_VisionSection_TitleText_Frame'] ??'N/A',
        genZT_VisionSection_SubtitleText: json['attributes']?['GenZT_VisionSection_SubtitleText'] ??'N/A',
        genZT_LandingData_ContactUsSection_TitleText: json['attributes']?['GenZT_LandingData_ContactUsSection_TitleText'] ??'N/A',
        genZT_LandingData_ContactUsSection_SubtitleText: json['attributes']?['GenZT_LandingData_ContactUsSection_SubtitleText'] ??'N/A',
        genZT_ContactUs_YourName_TextField: json['attributes']?['GenZT_ContactUs_YourName_TextField'] ??'N/A',
        genZT_ContactUs_Email_TextField: json['attributes']?['GenZT_ContactUs_Email_TextField'] ??'N/A',
        genZT_ContactUs_Reason_TextField: json['attributes']?['GenZT_ContactUs_Reason_TextField'] ??'N/A',
        genZT_ContactUs_Phone_TextField: json['attributes']?['GenZT_ContactUs_Phone_TextField'] ??'N/A',
        genZT_ContactUs_Message_TextField: json['attributes']?['GenZT_ContactUs_Message_TextField'] ??'N/A',
        genZT_ContactUs_RequiredField_Text: json['attributes']?['GenZT_ContactUs_RequiredField_Text'] ??'N/A',
        genZT_ContactUs_ButtonText: json['attributes']?['GenZT_ContactUs_ButtonText'] ??'N/A',
        genZT_ClientReviewSection_Text: json['attributes']?['GenZT_ClientReviewSection_Text'] ??'N/A',
        genZT_LandingData_Footer_SocialMediaText: json['attributes']?['GenZT_LandingData_Footer_SocialMediaText'] ??'N/A',
        genZT_LandingData_Footer_SocialMedia_FacebookText: json['attributes']?['GenZT_LandingData_Footer_SocialMedia_FacebookText'] ??'N/A',
        genZT_LandingData_Footer_SocialMedia_InstagramText: json['attributes']?['GenZT_LandingData_Footer_SocialMedia_InstagramText'] ??'N/A',
        genZT_LandingData_Footer_SocialMedia_XText: json['attributes']?['GenZT_LandingData_Footer_SocialMedia_XText'] ??'N/A',
        genZT_LandingData_Footer_SocialMedia_DiscordText: json['attributes']?['GenZT_LandingData_Footer_SocialMedia_DiscordText'] ??'N/A',
        genZT_LandingData_Footer_SocialMedia_SupportText: json['attributes']?['GenZT_LandingData_Footer_SocialMedia_SupportText'] ??'N/A',
        genZT_LandingData_Footer_SocialMedia_OurClientsText: json['attributes']?['GenZT_LandingData_Footer_SocialMedia_OurClientsText'] ??'N/A',
        genZT_LandingData_Footer_SocialMedia_ContactUsText: json['attributes']?['GenZT_LandingData_Footer_SocialMedia_ContactUsText'] ??'N/A',

      // ^ Images
      genZT_LandingData_NavBar_Logo: _urlImageDecode(json['attributes']?['GenZT_LandingData_NavBar_Logo']),
      genZT_LandingData_HeroSection_Image: _urlImageDecode(json['attributes']?['GenZT_LandingData_HeroSection_Image']),
      genZT_LandingData_AboutUsSection_imagestack0: _urlImageDecode(json['attributes']?['GenZT_LandingData_AboutUsSection_imagestack0']),
      genZT_LandingData_AboutUsSection_imagestack1: _urlImageDecode(json['attributes']?['GenZT_LandingData_AboutUsSection_imagestack1']),
      genZT_LandingData_AboutUsSection_imagestack2: _urlImageDecode(json['attributes']?['GenZT_LandingData_AboutUsSection_imagestack2']),
      genZT_MissionSection_TitleText_Icon_Frame: _urlImageDecode(json['attributes']?['GenZT_MissionSection_TitleText_Icon_Frame']),
      genZT_VisionSection_TitleText_Icon: _urlImageDecode(json['attributes']?['GenZT_VisionSection_TitleText_Icon']),
      genZT_LandingData_ContactUsSection_ImageStack0: _urlImageDecode(json['attributes']?['GenZT_LandingData_ContactUsSection_ImageStack0']),
      genZT_ClientReviewSection_LeftIcon: _urlImageDecode(json['attributes']?['GenZT_ClientReviewSection_LeftIcon']),
      genZT_ClientReviewSection_RightIcon: _urlImageDecode(json['attributes']?['GenZT_ClientReviewSection_RightIcon']),
      genZT_LandingData_Footer_Logo: _urlImageDecode(json['attributes']?['GenZT_LandingData_Footer_Logo']),

    );
  }
}
