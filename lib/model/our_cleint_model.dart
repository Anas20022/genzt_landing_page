
import '../network/apiendpoint.dart';

  class OurCleintModel {
  final int id;
  final String genZT_ClientReviewSection_Text;
  final String genZT_ClientReviewSection_ClientName;
  final String? genZT_ClientReviewSection_Rate;

  // -------------------------------------------------------------------------------------- //

  OurCleintModel({
    required this.id,
    required this.genZT_ClientReviewSection_Text,
    required this.genZT_ClientReviewSection_ClientName,
    required this.genZT_ClientReviewSection_Rate,
  });

  // -------------------------------------------------------------------------------------- //

  factory OurCleintModel.fromJson(Map<String, dynamic> json) {
    return OurCleintModel(
      id: json['id'] ?? -1,
      genZT_ClientReviewSection_Text: json['attributes']?['GenZT_ClientReviewSection_Text'] ?? 'N/A',
      genZT_ClientReviewSection_ClientName: json['attributes']?['GenZT_ClientReviewSection_ClientName'] ?? 'N/A',
      genZT_ClientReviewSection_Rate: json['attributes']?['GenZT_ClientReviewSection_Rate']?['data'] != null
          ? ApiEndPoint.baseUrl +
          json['attributes']['GenZT_ClientReviewSection_Rate']['data']['attributes']['url']
          : null,
    );
  }

  // -------------------------------------------------------------------------------------- //



  @override
  String toString() {
    return 'AppModel(id: $id, GenZT_ClientReviewSection_Text: $genZT_ClientReviewSection_Text, GenZT_ClientReviewSection_ClientName: $genZT_ClientReviewSection_ClientName, GenZT_ClientReviewSection_Rate: $genZT_ClientReviewSection_Rate)';
  }
}
