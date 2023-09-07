import 'package:employees/constant/colors.dart';
import 'package:employees/data/models/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToDoWidget extends StatelessWidget {
  final List<Todo> data;

  const ToDoWidget({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.w),
      decoration: BoxDecoration(
        color: AppColors.backGroundColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ToDo",
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w200,
              color: AppColors.whiteColor.withOpacity(.5),
            ),
          ),
          SizedBox(height: 5.h),
          Divider(color: AppColors.whiteColor,),
          Text("data",style: TextStyle(color: AppColors.whiteColor),)
          // ListView.separated(
          //     itemBuilder: (context, index) {
          //       return Text(
          //         data[index].title,
          //         style: TextStyle(
          //           fontSize: 10.sp,
          //           fontWeight: FontWeight.w200,
          //           color: AppColors.whiteColor.withOpacity(.5),
          //         ),
          //       );
          //     },
          //     separatorBuilder: (context, index) {
          //       return SizedBox(height: 10.h);
          //     },
          //     itemCount: data.length),
        ],
      ),
    );
  }
   Divider divider(Color color){
    return Divider(
      color: color,
    );
  }
}
