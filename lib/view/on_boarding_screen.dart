import 'package:coffee/res/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Coffee Shop",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                // const GapWidget(350),
                const SizedBox(height: 200),
                Text(
                  "Feeling Low? Take a sip of coffee",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () => Get.offNamed("/"),
                  child: Container(
                    height: 50,
                    width: 175,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ColorManager.secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Get Start",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
