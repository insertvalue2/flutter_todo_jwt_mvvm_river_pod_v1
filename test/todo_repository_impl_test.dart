import 'package:flutter_test/flutter_test.dart';
import 'package:m_todo_jwt_v1/respoitory/entity/response_dto.dart';
import 'package:m_todo_jwt_v1/respoitory/remote/todo_repository.dart';
import 'package:m_todo_jwt_v1/respoitory/remote/todo_repository_impl.dart';

void main() {
  group("todo repo 테스트 ", () {
    test("리스트 전부 가져 오기", () async {
      // given
      TodoRepository todoRepository = TodoRepositoryImpl();

      // when
      ResponseDto responseDto = await todoRepository.requestTodoAll();

      // then
      expect(responseDto, isA<ResponseDto>());
    });
  });
}
