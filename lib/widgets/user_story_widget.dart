import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserStoryWidget extends StatelessWidget {
  const UserStoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.h, right: 8.0.w, left: 8.0.w),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.sp),
                border: Border.all(color: Colors.red, width: 3.w)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.sp),
              child: Image.network(
                "https://www.denofgeek.com/wp-content/uploads/2022/04/Better-Call-Saul-Season-6-Release-Date.jpg?fit=1920%2C1080,",
                fit: BoxFit.cover,
                height: 75.h,
                width: 75.w,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          const Text("turkish"),
        ],
      ),
    );
  }
}