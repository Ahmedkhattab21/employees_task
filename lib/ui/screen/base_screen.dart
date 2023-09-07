import 'package:employees/bloc/user_block.dart';
import 'package:employees/bloc/user_states.dart';
import 'package:employees/constant/colors.dart';
import 'package:employees/ui/widgets/todo_widget.dart';
import 'package:employees/ui/widgets/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
        body: Center(
          child: BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              if(UserCubit.get(context).users.isNotEmpty && UserCubit.get(context).todos.isNotEmpty){
                return SingleChildScrollView(
                  child: Column(
                    children:  UserCubit.get(context).users.map((e) => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:[
                          UserWidget(
                              name: e.name,
                              email: e.email,
                              subTitle: e.username,
                              image: ""),
                          SizedBox(width: 10.w),
                          ToDoWidget(
                            data: UserCubit.get(context).todos
                          ),
                        ],
                      ),
                    ),).toList(),
                  ),
                );
              }else{
                return const CircularProgressIndicator(
                  color: AppColors.backGroundColor,
                );
              }

            },
          ),
        ));
  }
}
