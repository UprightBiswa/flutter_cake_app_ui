// import 'package:flutter/material.dart';
// import '../widgets/custom_text_field.dart';
// import '../widgets/custom_button.dart';
// import 'packaging_delivery_page.dart';

// class ManageShopPage extends StatelessWidget {
//   const ManageShopPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Manage Shop")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text("Shop Name:",
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             const SizedBox(height: 5),
//             const CustomTextField(hintText: "Enter Shop Name"),
//             const SizedBox(height: 15),
//             const Text("Delivery Time:",
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             const SizedBox(height: 5),
//             const CustomTextField(hintText: "Enter Value (Minutes)"),
//             const SizedBox(height: 20),
//             CustomButton(
//               text: "Save",
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("Shop details saved!")),
//                 );
//               },
//             ),
//             CustomButton(
//               text: "Next",
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const PackagingDeliveryPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../lib/app/constants/app_colors.dart';
import '../../lib/app/constants/app_text_styles.dart';
import 'custom_button.dart';
import 'packaging_delivery_page.dart';

class ManageShopPage extends StatelessWidget {
  const ManageShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MANAGE SHOP"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Shop Name
            const Text("Shop Name:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            Text("Hub Quality Bakers",
                style: AppTextStyles.subtitle.copyWith(color: AppColors.grey)),
            const SizedBox(height: 15),

            // FSSAI License Number
            const Text("FSSAI License Number:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            Text("873687DHDHJH122",
                style: AppTextStyles.subtitle.copyWith(color: AppColors.grey)),
            const SizedBox(height: 20),

            // Shop Display Photo
            const Text("Add Shop Display Photo (Max 1):",
                style: AppTextStyles.subtitle),
            const SizedBox(height: 10),
            CustomButton(
              text: "Add Image",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Add Image")),
                );
              },
            ),
            const SizedBox(height: 10),
            //a continer  60 box border 1px  redious 20 border color black 25 % and stack a relode icon primay color botm right
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.black.withOpacity(.25), width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: IconButton(
                      icon: const Icon(Icons.refresh, color: AppColors.primary),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Image reloaded!")),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Menu Options
            buildMenuItem(Icons.local_offer, "Offer & Discount"),
            buildMenuItem(Icons.settings, "Other Settings"),
            buildMenuItem(Icons.delivery_dining, "Packaging & Delivery"),
            buildMenuItem(Icons.fastfood, "Products"),
            buildMenuItem(Icons.campaign, "Promotions"),
            const SizedBox(height: 30),

            // Important Note
            //text Note:
            const Text("Note:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),

            Container(
              padding: const EdgeInsets.all(12),
              child: const Text(
                "1. Shop will not be visible to customers if you have no products added!\n"
                "2. Add products at menu price to avoid items being delisted in the future!",
                style: AppTextStyles.body,
              ),
            ),
            const SizedBox(height: 20),

            CustomButton(
              text: "Next",
              onPressed: () {
                Get.to(() => const PackagingDeliveryPage());
              },
            ),
          ],
        ),
      ),
    );
  }

  // Menu Item Widget
  Widget buildMenuItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Center(
          child: Text(
            title,
            style: AppTextStyles.subtitle.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
        onTap: () {
          // Navigate to respective pages
        },
      ),
    );
  }
}
