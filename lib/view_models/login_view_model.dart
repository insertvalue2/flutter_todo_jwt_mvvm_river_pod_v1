import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:m_todo_jwt_v1/respoitory/entity/response_dto.dart';
import 'package:m_todo_jwt_v1/respoitory/remote/user_repository.dart';
import 'package:m_todo_jwt_v1/respoitory/remote/user_repository_impl.dart';

import '../models/user.dart';

class LoginViewModel {
  final _userRepository = UserRepositoryImpl();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  bool loginValid() {
    print("check");
    final email = emailController.text;
    final password = passwordController.text;

    // if (!email.isNotEmpty && !password.isNotEmpty) {
    //   fetchSignIn(User(email: 'hong@example.com', password: 'hong1234'));
    //   return true;
    // } else {
    //   return false;
    // }
    return true;
  }

  Future<bool> fetchSignIn() async {
    User user = User(email: 'hong@example.com', password: 'hong1234');
    // 상태 관리 처리
    ResponseDto responseDto = await _userRepository.requestSignIn(user: user);
    if (responseDto.code != -1) {
      return true;
    } else {
      return false;
    }
  }
}
