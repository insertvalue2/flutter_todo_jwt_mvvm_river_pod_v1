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

        // dio.options.headers["Authorization"] = "Bearer $token"; // 전역 헤더 설정
      }
      ResponseDto responseDto = ResponseDto.fromJson(response.data);
      responseDto.token = token;
      responseDto.code = 1;
      responseDto.message = "로그인 성공";

      return responseDto;
    } catch (e) {
      return ResponseDto(code: -1, message: '로그인 실패', data: '', token: '');
    }
  }

  @override
  Future<ResponseDto> requestSignUp({required User user}) async {
    try {
      print(" user.toJson() : ${user.toJson()}");
      // dio 가 object type 으로 넣으면  알아서 json 형식 으로 변경 처리 해 준다.
      Response response = await dio.post(endPointSignUp, data: user);
      print("response : ${response.data.toString()}");
      ResponseDto responseDto = ResponseDto.fromJson(response.data);
      responseDto.code = 1;
      responseDto.message = '회원 가입 완료';

      print("repo signUp : ${responseDto.toString()}");
      return responseDto;
    } catch (e) {
      print("e : ${e.toString()}");
      return ResponseDto(code: -1, message: '회원 가입 실패', data: '', token: '');
    }
  }
}
