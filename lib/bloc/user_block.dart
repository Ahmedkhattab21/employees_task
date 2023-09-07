import 'package:employees/bloc/user_states.dart';
import 'package:employees/data/models/todo.dart';
import 'package:employees/data/models/user_response.dart';
import 'package:employees/data/repository/users_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  final UsersRepository usersRepository;

  UserCubit(
    this.usersRepository,
  ) : super(InitialState());
  List<UserResponse> users = [];

  getUsers() async {
    emit(OnGetUsersLoadingState());
    await usersRepository.getAllUsers().then((value) {
      users = value;
      emit(OnGetUsersSuccessState());
    }).catchError((error) {
      emit(OnGetUsersErrorState());
    });
  }

  List<Todo> todos = [];
  getTodos() async {
    emit(OnGetTodoLoadingState());
    await usersRepository.getAllTodos().then((value) {
      todos = value;
      emit(OnGetTodoSuccessState());
    }).catchError((error) {
      emit(OnGetTodoErrorState());
    });
  }



  static UserCubit get(context) => BlocProvider.of(context);
}
