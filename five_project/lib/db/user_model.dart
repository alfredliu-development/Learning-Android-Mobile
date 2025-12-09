class UserModel {
  int? id;
  String name;
  int age;

  UserModel({
    this.id,
    required this.name,
    required this.age,
  });

  /// Convert Map → Model
  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["name"],
      age: json["age"],
    );
  }

  /// Convert Model → Map
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "age": age,
    };
  }
}
