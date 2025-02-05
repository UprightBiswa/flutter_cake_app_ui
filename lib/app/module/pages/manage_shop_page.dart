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
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import 'packaging_delivery_page.dart';

class ManageShopPage extends StatelessWidget {
  const ManageShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Shop"),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Center(
              child: Text("MANAGE SHOP", style: AppTextStyles.heading),
            ),
            const SizedBox(height: 20),

            // Shop Name
            Text("Shop Name:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(hintText: "Hub Quality Bakers"),
            const SizedBox(height: 15),

            // FSSAI License Number
            Text("FSSAI License Number:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(hintText: "873687DHDHJH122"),
            const SizedBox(height: 20),

            // Shop Display Photo
            Text("Add Shop Display Photo (Max 1):", style: AppTextStyles.subtitle),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Handle Image Selection
              },
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.grey),
                ),
                child: const Center(
                  child: Icon(Icons.camera_alt, size: 40, color: Colors.grey),
                ),
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
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "⚠ Shop will not be visible to customers if you have no products added!\n"
                "⚠ Add products at menu price to avoid items being delisted in the future!",
                style: AppTextStyles.body,
              ),
            ),
            const SizedBox(height: 20),

            // Buttons
            CustomButton(
              text: "Save",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Shop details saved!")),
                );
              },
            ),
            const SizedBox(height: 10),
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
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: AppColors.primary),
          title: Text(title, style: AppTextStyles.subtitle),
          trailing: const Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {
            // Navigate to respective pages
          },
        ),
        const Divider(),
      ],
    );
  }
}
