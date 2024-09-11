
class SocialMediaModel {
  final int id;
  final String name;
  final String link;

  // -------------------------------------------------------------------------------------- //

  SocialMediaModel({
    required this.id,
    required this.name,
    required this.link,

  });

  // -------------------------------------------------------------------------------------- //

  factory SocialMediaModel.fromJson(Map<String, dynamic> json) {
    return SocialMediaModel(
      id: json['id'] ?? -1,
      name: json['attributes']?['GenZT_SocialMedia_Name'] ?? 'N/A',
      link: json['attributes']?['GenZT_SocialMedia_Link'] ?? 'N/A',
    );
  }

  // -------------------------------------------------------------------------------------- //


  @override
  String toString() {
    return 'AppModel(id: $id, Rival_SocialMedia_Name: $name, Rival_SocialMedia_Link: $link)';
  }
}
