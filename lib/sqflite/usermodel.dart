class UserModell {
  String? name;
  String? phones;
  String? email;
  String? id;
  UserModell({this.name, this.phones, this.email, this.id});

  UserModell.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phones = json['phones'];
    email = json['email:'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['phones'] = this.phones;
    data['email:'] = this.email;
    data['id'] = this.id;
    return data;
  }
}