import 'package:dio/dio.dart';
import 'package:m_todo_jwt_v1/models/user.dart';

import '../entity/response_dto.dart';

abstract class UserRepository {
  Future<ResponseDto> requestSignIn({required User user});
  Future<Response> requestSignUp({required User user});
}
