import 'package:dio/dio.dart';
import 'package:m_todo_jwt_v1/shared/api.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: todoBaseUri, // 내 IP 입력
    contentType: "application/json; charset=utf-8",
  ),
);
