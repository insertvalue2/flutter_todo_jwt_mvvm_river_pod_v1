import 'package:flutter/material.dart';
import 'package:m_todo_jwt_v1/view_models/login_view_model.dart';
import 'package:m_todo_jwt_v1/views/user/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: LoginPage(loginViewModel: loginViewModel)),
    );
  }
}
