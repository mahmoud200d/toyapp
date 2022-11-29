class HomeModel {
 late bool status;
 late int code;
 late  dynamic message;
  Items? items;
 HomeModel();

  HomeModel.fromJson(Map< dynamic, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    items = json['items'] != null? Items.fromJson(json['items']):null;
  }


}

class Items {
  List<Categores> categores=[];




  Items.fromJson(Map< dynamic, dynamic> json) {
      json['categores'].forEach((v) {
        categores.add(Categores.fromJson(v));
      });
    }

  }



class Categores {
late int id;
late  dynamic image;
late  dynamic video;
late  dynamic status;
late  dynamic name;
late  dynamic shortDetails;
late  dynamic details;
late  dynamic pageName;
late  dynamic pageDetails;


  Categores.fromJson(Map< dynamic, dynamic> json) {
    id = json['id'];
    image = json['image'];
    video = json['video'];
    status = json['status'];
    name = json['name'];
    shortDetails = json['short_details'];
    details = json['details'];
    pageName = json['page_name'];
    pageDetails = json['page_details'];
  }

  Map< dynamic, dynamic> toJson() {
    final Map< dynamic, dynamic> data = new Map< dynamic, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['video'] = this.video;
    data['status'] = this.status;
    data['name'] = this.name;
    data['short_details'] = this.shortDetails;
    data['details'] = this.details;
    data['page_name'] = this.pageName;
    data['page_details'] = this.pageDetails;
    return data;
  }
}