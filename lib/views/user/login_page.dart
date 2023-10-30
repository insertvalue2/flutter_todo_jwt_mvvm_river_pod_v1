import 'package:flutter/material.dart';
import 'package:m_todo_jwt_v1/shared/common_widgets.dart';
import 'package:m_todo_jwt_v1/shared/constant.dart';
import 'package:m_todo_jwt_v1/view_models/login_view_model.dart';

class LoginPage extends StatelessWidget {
  LoginViewModel loginViewModel;

  LoginPage({required this.loginViewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(strAppBarLoginTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: loginViewModel.emailController,
              decoration: InputDecoration(labelText: strEmail),
            ),
            TextField(
              controller: loginViewModel.passwordController,
              decoration: InputDecoration(labelText: strPassword),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 유효성 검사
                if (!loginViewModel.loginValid()) {
                  showCustomSnackBar(context, '필수 값을 입력 하세요');
                }
                // 로그인 요청 처리
                loginViewModel.fetchSignIn().then((isOk) {
                  if (isOk) {
                    showCustomSnackBar(context, "잘못된 접근 입니다");
                  }
                });
              },
              child: const Text(strLogin),
            ),
          ],
        ),
      ),
    );
  }
}
