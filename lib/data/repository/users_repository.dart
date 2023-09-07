import 'package:employees/data/models/todo.dart';
import 'package:employees/data/models/user_response.dart';
import 'package:employees/data/web_service/users_web_services.dart';

class UsersRepository {
  UsersWebServices usersWebServices;

  UsersRepository(this.usersWebServices);

  Future<List<UserResponse>> getAllUsers() async {
    return await usersWebServices.getAllUsers();
  }

  Future<List<Todo>> getAllTodos() async {
    return await usersWebServices.getTodos();
  }
}
