import 'package:m_todo_jwt_v1/models/todo.dart';
import 'package:m_todo_jwt_v1/respoitory/entity/response_dto.dart';
import 'package:m_todo_jwt_v1/respoitory/remote/todo_repository.dart';

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
  Future<ResponseDto> requestTodoAll() {
    // TODO: implement requestTodoAll
    throw UnimplementedError();
  }

  @override
  Future<ResponseDto> requestUpdateTodo({required Todo todo}) {
    throw UnimplementedError();
  }
}
