import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/app_style.dart';
import 'package:food_delivery_app/common/reusable_text.dart';
import 'package:food_delivery_app/constants/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
    );
  }
}