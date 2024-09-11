
import '../network/apiendpoint.dart';

class AppModel {
  final int id;
  final String genztAppName;
  final String genztAppLink;
  final String? genztAppImage;

  // -------------------------------------------------------------------------------------- //

  AppModel({
    required this.id,
    required this.genztAppName,
    required this.genztAppLink,
    required this.genztAppImage,
  });

  // -------------------------------------------------------------------------------------- //

  factory AppModel.fromJson(Map<String, dynamic> json) {
    return AppModel(
      id: json['id'] ?? -1,
      genztAppName: json['attributes']?['GenZT_App_Name'] ?? 'N/A',
      genztAppLink: json['attributes']?['GenZT_App_Link'] ?? 'N/A',
      genztAppImage: json['attributes']?['GenZT_App_Image']?['data'] != null
          ? ApiEndPoint.baseUrl +
              json['attributes']['GenZT_App_Image']['data']['attributes']['url']
          : null,
    );
  }

  // -------------------------------------------------------------------------------------- //

  // #REF: Delete this function @ release mode.

  @override
 

  @override
  String toString() {
    return 'AppModel(id: $id, GenZT_App_Name: $genztAppName, GenZT_App_Link: $genztAppLink, GenZT_App_Image: $genztAppImage)';
  }
}
