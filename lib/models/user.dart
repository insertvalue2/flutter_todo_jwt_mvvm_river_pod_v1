class User {
  String? username;
  final String email;
  final String password;

  User({this.username, required this.email, required this.password});

  // Json 으로 convert 하기 위해서 dart object type --> map type 으로 변환 해야 한다.
  Map<String, dynamic> toJson() {
    return {
      'username': username ?? "",
      'email': email,
      'password': password,
    };
  }
}
