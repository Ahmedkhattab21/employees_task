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
        crossAxisAlignment: CrossAxisAlignment.center,
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
          SizedBox(
              width: 30.w,
              child: Divider(color: AppColors.whiteColor.withOpacity(.5))),
          // Text("data",style: TextStyle(color: AppColors.whiteColor)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: data.map((e) => Padding(
              padding:  EdgeInsets.only(top: 10.h),
              child: Text(
                e.title,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w200,
                  color: AppColors.whiteColor.withOpacity(.5),
                ),
              ),
            )).toList(),
          )
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
