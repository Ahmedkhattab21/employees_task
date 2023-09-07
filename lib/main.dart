import 'package:employees/bloc/observer.dart';
import 'package:employees/bloc/user_block.dart';
import 'package:employees/data/repository/users_repository.dart';
import 'package:employees/data/web_service/users_web_services.dart';
import 'package:employees/ui/screen/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: BlocProvider(
              create: (context) =>
                  UserCubit(UsersRepository(UsersWebServices()))..getUsers()..getTodos(),
              child: const BaseScreen(),
            ),
          );
        });
  }
}
