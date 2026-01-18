import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/common/custom_appbar.dart';
import 'package:food_delivery_app/common/custom_container.dart';
import 'package:food_delivery_app/common/heading.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/views/home/all_nearby_restaurants.dart';
import 'package:food_delivery_app/views/home/fastest_food.dart';
import 'package:food_delivery_app/views/home/recomendation.dart';
import 'package:food_delivery_app/views/home/widgets/category_list.dart';
import 'package:food_delivery_app/views/home/widgets/food_list.dart';
import 'package:food_delivery_app/views/home/widgets/nearby_restuarants_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(130.h), child: CustomAppbar()),
      body: SafeArea(
          child: CustomContainer(containerContent: Column(
            children: [
              CategoryList(),
              Heading(
                text: "Nearby Restaurants", 
                onTap: () {
                  Get.to(()=> AllNearbyRestaurants(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 900),
                  );
                },
              ),

              NearbyRestuarantsList(),

              Heading(
                text: "Try Something New", 
                onTap: () {
                  Get.to(()=> Recomendation(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 900),
                  );
                },
              ),

              FoodList(),

              Heading(
                text: "Foods closest to you", 
                onTap: () {
                  Get.to(()=> AllFastestFood(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 900),
                  );
                },
              ),

              FoodList(),
              
            ],
          )),
      ),
    );
  }
}
