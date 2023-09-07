import 'package:equatable/equatable.dart';

class UserResponse extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;


  const UserResponse({
    required this.id,
    required this.name,
    required this.username,
    required this.email,

  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
      };

  @override
  List<Object> get props => [
        id,
        name,
        username,
        email,
      ];
}
