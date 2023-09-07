import 'package:dio/dio.dart';
import 'package:employees/constant/strings.dart';
import 'package:employees/data/models/todo.dart';
import 'package:employees/data/models/user_response.dart';

class UsersWebServices {
  late Dio _dio;

  UsersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: AppStrings.baseUrl,
    //   receiveDataWhenStatusError: true,
    //   connectTimeout: const Duration(seconds: 5),
    //   receiveTimeout: const Duration(seconds: 3),
    );
    _dio = Dio(options);
  }

  Future<List<UserResponse>> getAllUsers() async {
    try {
      print(123);

      final response = await _dio.get('https://jsonplaceholder.typicode.com/users');

      if (response.statusCode == 200) {
        return List<UserResponse>.from(response.data.map((x)=>UserResponse.fromJson(x)));
      } else {
        throw "error";
      }
    } catch (e) {
      throw "error";
    }
  }

  Future<List<Todo>> getTodos() async {
    try {
      final response = await _dio.get('/todos');
      if (response.statusCode == 200) {
        return List<Todo>.from(response.data.map((x)=>Todo.fromJson(x)));
      } else {
        throw "error";
      }
    } catch (e) {
      throw "error";
    }
  }
}
