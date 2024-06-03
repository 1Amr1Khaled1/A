import 'package:coffee/view/on_boarding_screen.dart';

import '../../view/main_screens.dart';
import '../../utils/app_binding.dart';
import 'package:get/get.dart';
import '../../view/home_screen.dart';
import '../../res/color_manager.dart';
import '../../view/profile_screen.dart';
import '../../view/details_screen.dart';
import '../../view/favourite_screen.dart';
import '../../view/cart_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        canvasColor: ColorManager.primaryColor,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: ColorManager.primaryColor,
        appBarTheme: const AppBarTheme(
          shadowColor: Colors.transparent,
          backgroundColor: ColorManager.primaryColor,
        ),
      ),
      initialBinding: AppBinding(),
      initialRoute: '/onBoarding',
      getPages: [
        GetPage(name: '/onBoarding', page: () => const OnBoardingScreen()),
        GetPage(name: '/', page: () => MainScreen()),
        GetPage(name: '/HOME', page: () => const HomeScreen()),
        GetPage(name: '/DETAILS', page: () => DetailsScreen()),
        GetPage(name: '/FAVOURITE', page: () => const FavouriteScreen()),
        GetPage(name: '/NOTIFICATION', page: () => const CartScreen()),
        GetPage(name: '/PROFILE', page: () => const ProfileScreen()),
      ],
    );
  }
}
