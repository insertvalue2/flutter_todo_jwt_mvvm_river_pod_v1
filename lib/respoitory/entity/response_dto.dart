class ResponseDto {
  int? code;
  String? message;
  String? token;
  dynamic? data;

  ResponseDto({this.code, this.message, this.token, this.data});

  factory ResponseDto.fromJson(Map<String, dynamic> json) {
    return ResponseDto(
      code: json['code'] as int?,
      message: json['message'] as String?,
      token: json['token'] as String?,
      data: json['data'],
    );
  }

  @override
  String toString() {
    return 'ResponseDto{code: ${code ?? ""}, message: ${message ?? ""}, token: ${token ?? ""}, data: ${data ?? ""}';
  }
}
