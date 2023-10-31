import 'package:flutter/material.dart';
import 'package:m_todo_jwt_v1/view_models/join_view_model.dart';
import 'package:m_todo_jwt_v1/view_models/login_view_model.dart';
import 'package:m_todo_jwt_v1/views/user/join_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 추후 river pod 사용 예정
  final loginViewModel = LoginViewModel();
  final joinViewModel = JoinViewModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: JoinPage(joinViewModel: joinViewModel)),
    );
  }
}
