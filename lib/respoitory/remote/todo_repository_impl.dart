import 'package:dio/dio.dart';
import 'package:m_todo_jwt_v1/models/todo.dart';
import 'package:m_todo_jwt_v1/respoitory/entity/response_dto.dart';
import 'package:m_todo_jwt_v1/respoitory/remote/todo_repository.dart';
import 'package:m_todo_jwt_v1/shared/api.dart';
import 'package:m_todo_jwt_v1/shared/http.dart';

class TodoRepositoryImpl implements TodoRepository {
  @override
  Future<ResponseDto> requestCreateTodo({required Todo todo}) {
    // TODO: implement requestCreateTodo
    throw UnimplementedError();
  }

  @override
  Future<ResponseDto> requestDeleteTodo({required int id}) {
    // TODO: implement requestDeleteTodo
    throw UnimplementedError();
  }

  @override
  Future<ResponseDto> requestTodoAll() async {
    try {
      Response response = await dio.get(endPointTodoAll);
      print('status code : ${response.statusCode}');
      print('status code : ${response.headers}');
      print('status code : ${response.data}');

      return ResponseDto(code: -1, message: "서버오류", token: '', data: '');
    } catch (e) {
      return ResponseDto(code: -1, message: "서버오류", token: '', data: '');
    }
  }

  @override
  Future<ResponseDto> requestUpdateTodo({required Todo todo}) {
    throw UnimplementedError();
  }
}
