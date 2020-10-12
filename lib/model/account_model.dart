class AccountModel {
  String iD;
  String email;
  String name;
  String password;

  AccountModel({this.iD, this.email, this.name, this.password});

  AccountModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    email = json['Email'];
    name = json['Name'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Email'] = this.email;
    data['Name'] = this.name;
    data['Password'] = this.password;
    return data;
  }
}
