class TodoEntity {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  TodoEntity(
      {required this.id,
      required this.userId,
      required this.title,
      required this.completed});

  factory TodoEntity.fromJson(Map<String, dynamic> json) {
    return TodoEntity(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );
  }
}
