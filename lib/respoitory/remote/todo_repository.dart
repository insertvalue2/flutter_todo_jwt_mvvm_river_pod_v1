import 'package:dio/dio.dart';
import 'package:m_todo_jwt_v1/models/todo.dart';
import 'package:m_todo_jwt_v1/models/user.dart';

import '../entity/response_dto.dart';

abstract class TodoRepository {
  Future<ResponseDto> requestTodoAll();
  Future<ResponseDto> requestCreateTodo({required Todo todo});
  Future<ResponseDto> requestUpdateTodo({required Todo todo});
  Future<ResponseDto> requestDeleteTodo({required int id});
}
