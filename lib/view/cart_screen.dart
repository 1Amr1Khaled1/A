import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_controller.dart';
import 'widget/coffee_widget.dart';

class CartScreen extends GetWidget<AppController> {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<AppController>();

    return GetBuilder<AppController>(
      builder: (controller) => controller.cart.isEmpty
          ? const Center(
              child: Text(
                'No Cart coffee added to cart yet',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
              ),
              itemCount: controller.cart.length,
              itemBuilder: (context, index) => CoffeeWidget(
                coffee: controller.cart[index],
                icon: Icons.remove_shopping_cart,
                onIconTap: () {
                  controller.onBuyClick(controller.cart[index]);
                },
                count: Obx(() => Container(
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => controller.increment(),
                            icon: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                          Text(
                            controller.countCart.value.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () => controller.decrement(),
                            icon: const Icon(
                              Icons.remove_rounded,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
    );
  }
}

// Obx counter() {
//   return Obx(
//     () => Container(
//       height: 48,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.white12),
//       ),
//       child:
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               onPressed: () => controller.increment(),
//               icon: const Icon(
//                 Icons.add_rounded,
//                 color: Colors.white,
//                 size: 22,
//               ),
//             ),
//             Text(
//               controller.countCart.toString(),
//               style: const TextStyle(color: Colors.white, fontSize: 20),
//             ),
//             IconButton(
//               onPressed: () => controller.decrement(),
//               icon: const Icon(
//                 Icons.remove_rounded,
//                 color: Colors.white,
//                 size: 22,
//               ),
//             ),
//           ],
//         ),
//     )
//   );
// }
