import 'package:flutter/material.dart';

import '../models/user.dart';
import '../respoitory/entity/response_dto.dart';
import '../respoitory/remote/user_repository_impl.dart';

class JoinViewModel {
  final _userRepository = UserRepositoryImpl();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get usernameController => _usernameController;

  bool joinValid() {
    print("check valid");
    final password = _passwordController.text;
    final email = _emailController.text;
    final username = _usernameController.text;

    // 유효성 체크 확인
    // todo - 현재 무조건 true 처리
    return true;
  }

  Future<bool> fetchSignUp() async {
    User user =
        User(username: 'userA', email: 'userA@example.com', password: 'a1234');
    // 상태 관리 처리
    ResponseDto responseDto = await _userRepository.requestSignUp(user: user);
    if (responseDto.code != -1) {
      return true;
    } else {
      return false;
    }
  }
}
