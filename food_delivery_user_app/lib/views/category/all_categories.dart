import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/common/app_style.dart';
import 'package:food_delivery_app/common/bg_controller.dart';
import 'package:food_delivery_app/common/reusable_text.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/views/category/category_page.dart';
import 'package:food_delivery_app/views/category/widget/category_tile.dart';
import 'package:get/get.dart';

import '../../constants/uidata.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)),
        title: ReusableText(text: "Categories", style: appStyle(16, kDark, FontWeight.w600)),
        centerTitle: true,
        backgroundColor: kOffWhite,
      ),
      body: BgController(
        color: kOffWhite,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (i){
              var category = categories[i];
              return CategoryTile(category: category);
            }),
          ),
        ),
      ),
    );
  }
}
