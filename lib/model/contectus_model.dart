class ContactusModel {
   bool? status;
   int? code;
   String?  message;

  ContactusModel();

  ContactusModel.fromJson(Map<dynamic, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
  }
}
