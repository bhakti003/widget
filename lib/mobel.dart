class UserModel {
  String? name;
  String? image;
  String? description;

  UserModel({this.name, this.image, this.description});
}

List<UserModel> userList = [
  UserModel(
      image: 'assets/image1.png', description: 'adasdasd', name: 'Lion'),
  UserModel(
      image: 'assets/image2.png', description: 'zcxzcxzcxzcxzc', name: 'Tiger'),
  UserModel(
      image: 'assets/image3.jpeg', description: 'dadadasds', name: 'Lion1'),
  UserModel(
      image: 'assets/image4.jpeg', description: 'zcxzcxzc', name: 'Tiger1'),
  UserModel(
      image: 'assets/image1.png', description: 'fdsfdsfdsfc', name: 'Surag'),
];

