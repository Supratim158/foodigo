import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/common/app_style.dart';
import 'package:food_delivery_app/common/reusable_text.dart';
import 'package:food_delivery_app/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: kSecondary,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(text: "📍 Deliver to", style: appStyle(15, kSecondary, FontWeight.w600)),
                      SizedBox(
                        width: width*0.65,
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          "Shibnagar, College road, near morden club , pin 7799004", style: appStyle(11, kGrayLight, FontWeight.normal),),
                      ),

                    ],
                  ),
                ),
                Text(getTimeOfDay(),style: TextStyle(fontSize: 25),)
              ],
            ),
          ],
        ),
      ),
    );
  }

  String getTimeOfDay(){
    DateTime now = DateTime.now();
    int hour = now.hour;

    if(hour >= 6 && hour <12){
      return ' 🌤️ ';
    }
    else if(hour >= 12 && hour <16){
      return ' ☀️ ';
    }
    else {
      return ' 🌙 ';
    }
  }
}
