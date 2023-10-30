import 'package:m_todo_jwt_v1/respoitory/entity/response_dto.dart';

class UserEntity {
  final int userId;
  final String username;
  final String email;

  UserEntity({
    required this.userId,
    required this.username,
    required this.email,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      userId: json['userId'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
    );
  }
}
