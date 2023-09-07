import 'package:employees/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserWidget extends StatelessWidget {
  final String image, name, subTitle, email;

  const UserWidget(
      {required this.name,
      required this.email,
      required this.subTitle,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.5,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.backGroundColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundImage: NetworkImage(image),
                backgroundColor: AppColors.greyColor,
              ),
              SizedBox(width: 10.w),
              SizedBox(
                width: MediaQuery.of(context).size.width*.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Text(
                      subTitle,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.whiteColor.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
              ),
           ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*.2,
                child: Text(
                  email,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteColor.withOpacity(.5),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Icon(
                Icons.message,
                color: AppColors.whiteColor.withOpacity(.5),
              ),
              SizedBox(width: 10.w),
              Icon(
                Icons.call,
                color: AppColors.whiteColor.withOpacity(.5),
              ),
            ],
          )
        ],
      ),
    );
  }
}
