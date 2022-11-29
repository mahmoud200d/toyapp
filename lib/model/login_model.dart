class LoginModel {
  late bool status;
  late dynamic code;
  User? user;

  LoginModel();
  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    user = json['user'] != dynamic ? User.fromJson(json['user']) : null;
  }
}

class User {
  late dynamic id;
  late dynamic type;
  late dynamic sponsorPackgeId;
  late dynamic spaceId;
  late String name;
  late String email;
  late String mobile;
  late dynamic countryId;
  late dynamic details;
  late String companyName;
  late dynamic facebook;
  late dynamic twitter;
  late dynamic inesta;
  late dynamic linkedin;
  late dynamic bankAccount;
  late dynamic iban;
  late dynamic commercialRegisterId;
  late dynamic startSubscription;
  late dynamic endSubscription;
  late dynamic platformPercent;
  late dynamic address;
  late dynamic cityName;
  late dynamic notes;
  late String image;
  late String coverImage;
  late dynamic rememberToken;
  late String status;
  late dynamic verified;
  late dynamic emailNotifications;
  late String accessToken;
  late String countryName;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    sponsorPackgeId = json['sponsor_packge_id'];
    spaceId = json['space_id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    countryId = json['country_id'];
    details = json['details'];
    companyName = json['company_name'];
    facebook = json['facebook'];
    twitter = json['twitter'];
    inesta = json['inesta'];
    linkedin = json['linkedin'];
    bankAccount = json['bank_account'];
    iban = json['iban'];
    commercialRegisterId = json['commercial_register_id'];
    startSubscription = json['start_subscription'];
    endSubscription = json['end_subscription'];
    platformPercent = json['platform_percent'];
    address = json['address'];
    cityName = json['city_name'];
    notes = json['notes'];
    image = json['image'];
    coverImage = json['cover_image'];
    rememberToken = json['remember_token'];
    status = json['status'];
    verified = json['verified'];
    emailNotifications = json['email_notifications'];
    accessToken = json['access_token'];
    countryName = json['country_name'];
  }
}
