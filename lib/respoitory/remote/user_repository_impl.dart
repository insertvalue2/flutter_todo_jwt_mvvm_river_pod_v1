import 'package:dio/dio.dart';

import 'package:m_todo_jwt_v1/models/user.dart';
import 'package:m_todo_jwt_v1/respoitory/entity/response_dto.dart';

import 'package:m_todo_jwt_v1/respoitory/remote/user_repository.dart';
import 'package:m_todo_jwt_v1/shared/api.dart';
import 'package:m_todo_jwt_v1/shared/http.dart';

// 싱글톤으로 만들어 주기 권장
class UserRepositoryImpl extends UserRepository {
  static final UserRepositoryImpl _instance = UserRepositoryImpl._single();
  UserRepositoryImpl._single();

  // factory 생성자
  factory UserRepositoryImpl() {
    return _instance;
  }

  Future<ResponseDto> requestSignIn({required User user}) async {
    try {
      print(" user.toJson() : ${user.toJson()}");
      // dio 가 object type 으로 넣으면  알아서 json 형식 으로 변경 처리 해 준다.
      Response response = await dio.post(endPointSignIn, data: user);

      String headers = response.headers.toString();
      String token = "";
      if (headers.startsWith("Bearer ")) {
        token = headers.substring(7);
      }
      ResponseDto responseDto = ResponseDto.fromJson(response.data);
      responseDto.token = token;
      return responseDto;
    } catch (e) {
      return ResponseDto(code: -1, message: '서버 오류', data: '', token: '');
    }
  }

  @override
  Future<Response> requestSignUp({required User user}) {
    // TODO: implement requestSignUp
    throw UnimplementedError();
  }
}
