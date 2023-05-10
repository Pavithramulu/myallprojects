class User {
  int id;
  String name;
  String email;
  String gender;
  String status;

  User(
      {required this.id,
        required this.name,
        required this.email,
        required this.gender,required this.status});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        gender: json['gender'],
      status: json['status']
    );
  }
}
