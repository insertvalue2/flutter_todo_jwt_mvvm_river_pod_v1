import 'package:flutter/material.dart';
import 'package:m_todo_jwt_v1/shared/constant.dart';
import 'package:m_todo_jwt_v1/view_models/join_view_model.dart';

import '../../shared/common_widgets.dart';

class JoinPage extends StatelessWidget {
  JoinViewModel joinViewModel;
  JoinPage({required this.joinViewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(strAppBarJoinTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: joinViewModel.emailController,
              decoration: InputDecoration(labelText: strUsername),
            ),
            TextField(
              controller: joinViewModel.emailController,
              decoration: InputDecoration(labelText: strEmail),
            ),
            TextField(
              controller: joinViewModel.passwordController,
              decoration: InputDecoration(labelText: strPassword),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 유효성 검사
                if (joinViewModel.joinValid()) {
                  // 로그인 요청 처리
                  joinViewModel.fetchSignUp().then((isOk) {
                    if (isOk) {
                      // 로그인 페이지 이동 처리
                    } else {
                      showCustomSnackBar(context, "잘못된 접근 입니다");
                    }
                  });
                } else {
                  showCustomSnackBar(context, '필수 값을 입력 하세요');
                }
              },
              child: const Text(strSignUp),
            ),
          ],
        ),
      ),
    );
  }
}
