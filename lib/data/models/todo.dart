import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) =>
      Todo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() =>
      {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };

  @override
  List<Object> get props => [userId, id, title, completed];
}