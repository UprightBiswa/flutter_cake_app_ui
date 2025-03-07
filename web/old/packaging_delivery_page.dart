// import 'package:flutter/material.dart';

// class PackagingDeliveryPage extends StatelessWidget {
//   const PackagingDeliveryPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Packaging & Delivery")),
//       body: const Center(child: Text("Packaging & Delivery Page")),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../lib/app/constants/app_text_styles.dart';
import 'custom_text_field.dart';
import 'custom_button.dart';
import 'vanilla_cack_page.dart';

class PackagingDeliveryPage extends StatelessWidget {
  const PackagingDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("PACKAGING & DELIVERY"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Delivery Time
            const Text("Delivery Time:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(hintText: "Enter Value"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(
                    hintText: "Minutes",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Delivery Radius
            const Text("Delivery Radius:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(hintText: "Enter Value"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(hintText: "KM"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Free Delivery Radius
            const Text("Free Delivery Radius:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(hintText: "Enter Value"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(hintText: "KM"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Packaging & Delivery Fees
            const Text("Packaging & Delivery Fees:",
                style: AppTextStyles.subtitle),
            const SizedBox(height: 10),

            // Order Value Wise - OV ≥ ₹ 500
            const Text("Order Value(OV) Wise:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            //row 2 inputer
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(hintText: "OV ≥ ₹ 500"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(hintText: "0"),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Order Value Wise - OV < ₹ 500
            const Text("Order Value(OV) Wise:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            //row 2 inputer
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(hintText: "OV < ₹ 500"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(hintText: "Enter Price in ₹"),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Important Note
            const Text("Note:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(12),
              child: const Text(
                "1. Minimum Value Allowed: ₹ 0\n"
                "2. Maximum Value Allowed: ₹ 100",
                style: AppTextStyles.body,
              ),
            ),
            const SizedBox(height: 30),

            // Save Button
            CustomButton(
              text: "Save",
              radius: 20,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text("Packaging & Delivery details saved!")),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Next",
              onPressed: () {
                Get.to(() => const ProductManagementPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
