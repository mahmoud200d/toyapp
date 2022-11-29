class RegisterModel {
   bool status=false;
   dynamic code='';
   dynamic message='';


  RegisterModel();

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];


  }


}

class User {
 late String name;
 late String type;
 late String mobile;
 late String email;
 late dynamic countryId;
 late dynamic id;
 late String countryName;


  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    mobile = json['mobile'];
    email = json['email'];
    countryId = json['country_id'];
    id = json['id'];
    countryName = json['country_name'];
  }


  }
