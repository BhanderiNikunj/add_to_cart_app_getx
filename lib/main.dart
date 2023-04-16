import 'package:add_to_cart_app_getx/Screen/Cart/View/CartScreen.dart';
import 'package:add_to_cart_app_getx/Screen/FoodDetail/View/FoodDetail.dart';
import 'package:add_to_cart_app_getx/Screen/Home/View/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => const HomeScreen(),
        'detail':(p0) => const FoodDetail(),
        'cart':(p0) => const CartScreen(),
      },
    ),
  );
}