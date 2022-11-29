class UpdateModel {

  late bool  status;
  late  dynamic  message;
  Data ? data;


  UpdateModel();



  UpdateModel.fromJson(Map< dynamic, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }


}


class Data {
late  int  id;
late  dynamic  name;
late  dynamic  email;
late  dynamic  phone;
late  dynamic  image;
late int  points;
late int  credit;
late  dynamic  token;

  

  Data.fromJson(Map< dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    points = json['points'];
    credit = json['credit'];
    token = json['token'];
  }
}