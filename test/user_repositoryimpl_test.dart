import 'package:flutter_test/flutter_test.dart';
import 'package:m_todo_jwt_v1/models/user.dart';
import 'package:m_todo_jwt_v1/respoitory/entity/response_dto.dart';
import 'package:m_todo_jwt_v1/respoitory/remote/user_repository_impl.dart';

void main() {
  late UserRepositoryImpl userRepository; // userRepository를 late로 선언

  setUp(() {
    userRepository = UserRepositoryImpl();
  });

  // group 테스트 프레임워크에서 사용되는 구성 및 실행을 위한 기본적인 구조 요소입니다
  //  group은 특정 클래스의 모든 테스트 케이스를 그룹화하고,
  group('UserRepositoryImpl TEST', () {
    // Todo 회원가입 로직 ResponseDto --> response 응답으로 처리
    // test - 회원 가입 성공
    test('회원 가입 성공', () async {
      // given
      final userRepository = UserRepositoryImpl();
      final User user =
          User(email: 'test@naver.com', password: '1234', username: 'testA1');

      // when
      final responseDto = await userRepository.requestSignUp(user: user);

      // then
      //  isA 함수는 주어진 객체가 지정한 타입 또는 클래스의 인스턴스인지 확인하는 역할
      expect(responseDto, isA<ResponseDto>());
      expect(responseDto.code, 1);
      expect(responseDto.message, '회원 가입 완료');
    });

    // test - 회원 가입 실패
    test("회원 가입 실패 테스트 ", () async {
      // given
      final userRepository = UserRepositoryImpl();
      final User user =
          User(email: 'test@naver.com', password: '1234', username: 'testA1');

      // when
      final responseDto = await userRepository.requestSignUp(user: user);

      // then
      //  isA 함수는 주어진 객체가 지정한 타입 또는 클래스의 인스턴스인지 확인하는 역할
      expect(responseDto, isA<ResponseDto>());
      expect(responseDto.code, -1);
      expect(responseDto.message, '회원 가입 실패');
    });

    test("로그인 요청 성공", () async {
      // given
      //final userRepository = UserRepositoryImpl();
      final User user = User(email: 'test@naver.com', password: '1234');

      // when
      final responseDto = await userRepository.requestSignIn(user: user);

      // then
      //  isA 함수는 주어진 객체가 지정한 타입 또는 클래스의 인스턴스인지 확인하는 역할
      expect(responseDto, isA<ResponseDto>());
      expect(responseDto.code, 1);
      expect(responseDto.message, "로그인 성공");
      expect(responseDto.token, isNotNull);
    });

    test("로그인 요청 실패", () async {
      // given
      final userRepository = UserRepositoryImpl();
      final User user = User(email: 'test@naver.com', password: '12312314');

      // when
      final responseDto = await userRepository.requestSignIn(user: user);

      // then
      //  isA 함수는 주어진 객체가 지정한 타입 또는 클래스의 인스턴스인지 확인하는 역할
      expect(responseDto, isA<ResponseDto>());
      expect(responseDto.code, -1);
      expect(responseDto.message, "로그인 실패");
      expect(responseDto.token, '');
    });
  });
}
