class WhatCanWeDoModel {
  int id;
  String genZT_ContactUs_YourName_TextField;
  String genZT_ContactUs_Email_TextField;
  String genZT_ContactUs_Reason_TextField;
  String genZT_ContactUs_Phone_TextField;
  String genZT_ContactUs_Message_TextField;

  WhatCanWeDoModel({
    required this.id,
    required this.genZT_ContactUs_YourName_TextField,
    required this.genZT_ContactUs_Email_TextField,
    required this.genZT_ContactUs_Reason_TextField,
    required this.genZT_ContactUs_Phone_TextField,
    required this.genZT_ContactUs_Message_TextField,
  });

  WhatCanWeDoModel.empty()
      : id = -1,
        genZT_ContactUs_YourName_TextField = '',
        genZT_ContactUs_Email_TextField = '',
        genZT_ContactUs_Reason_TextField = '',
        genZT_ContactUs_Phone_TextField = '',
        genZT_ContactUs_Message_TextField = '';

  factory WhatCanWeDoModel.fromJson(Map<String, dynamic> json) {
    return WhatCanWeDoModel(
      id: json['id'] ?? -1,
      genZT_ContactUs_YourName_TextField:
      json['attributes']?['GenZT_ContactUs_YourName_TextField'] ?? 'N/A',
      genZT_ContactUs_Email_TextField:
      json['attributes']?['GenZT_ContactUs_Email_TextField'] ?? 'N/A',
      genZT_ContactUs_Reason_TextField:
      json['attributes']?['GenZT_ContactUs_Reason_TextField'] ?? 'N/A',
      genZT_ContactUs_Phone_TextField:
      json['attributes']?['GenZT_ContactUs_Phone_TextField'] ?? 'N/A',
      genZT_ContactUs_Message_TextField:
      json['attributes']?['GenZT_ContactUs_Message_TextField'] ?? 'N/A',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': {
        'GenZT_ContactUs_YourName_TextField': genZT_ContactUs_YourName_TextField,
        'GenZT_ContactUs_Email_TextField': genZT_ContactUs_Email_TextField,
        'GenZT_ContactUs_Reason_TextField': genZT_ContactUs_Reason_TextField,
        'GenZT_ContactUs_Phone_TextField': genZT_ContactUs_Phone_TextField,
        "GenZT_ContactUs_Message_TextField": genZT_ContactUs_Message_TextField
      }
    };
  }
}