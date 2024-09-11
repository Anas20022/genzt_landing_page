
import '../network/apiendpoint.dart';

class ServicesModel {
  final int id;
  final String title;
  final String subTitle;
  final String? icon;

  // -------------------------------------------------------------------------------------- //

  ServicesModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  // -------------------------------------------------------------------------------------- //

  factory ServicesModel.fromJson(Map<String, dynamic> json) {
    return ServicesModel(
      id: json['id'] ?? -1,
      title: json['attributes']?['GenZT_ServicesSection_TitleText'] ?? 'N/A',
      subTitle: json['attributes']?['GenZT_ServicesSection_SubtitleText'] ?? 'N/A',
      icon: json['attributes']?['GenZT_ServicesSection_Icon']?['data'] != null
          ? ApiEndPoint.baseUrl +
          json['attributes']['GenZT_ServicesSection_Icon']['data']['attributes']['url']
          : null,
    );
  }

  // -------------------------------------------------------------------------------------- //


  @override
  String toString() {
    return 'AppModel(id: $id, GenZT_ServicesSection_TitleText: $title, GenZT_ServicesSection_SubtitleText: $subTitle, GenZT_ServicesSection_Icon: $icon)';
  }
}
