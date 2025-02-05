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
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class PackagingDeliveryPage extends StatelessWidget {
  const PackagingDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Packaging & Delivery"),
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
              child: Text("PACKAGING & DELIVERY", style: AppTextStyles.heading),
            ),
            const SizedBox(height: 20),

            // Delivery Time
            Text("Delivery Time:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(hintText: "Enter Value"),
            const SizedBox(height: 5),
            Text("Minutes", style: AppTextStyles.hintText),
            const SizedBox(height: 20),

            // Delivery Radius
            Text("Delivery Radius:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(hintText: "Enter Value"),
            const SizedBox(height: 5),
            Text("KM", style: AppTextStyles.hintText),
            const SizedBox(height: 20),

            // Free Delivery Radius
            Text("Free Delivery Radius:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(hintText: "Enter Value"),
            const SizedBox(height: 5),
            Text("KM", style: AppTextStyles.hintText),
            const SizedBox(height: 20),

            // Packaging & Delivery Fees
            Text("Packaging & Delivery Fees:", style: AppTextStyles.subtitle),
            const SizedBox(height: 10),

            // Order Value Wise - OV ≥ ₹ 500
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("OV ≥ ₹ 500", style: AppTextStyles.body),
                Text("₹ 0", style: AppTextStyles.boldText),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),

            // Order Value Wise - OV < ₹ 500
            Text("Order Value(OV) Wise:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(hintText: "Enter Price in ₹"),
            const SizedBox(height: 20),

            // Important Note
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "⚠ Minimum Value Allowed: ₹ 0\n"
                "⚠ Maximum Value Allowed: ₹ 100",
                style: AppTextStyles.body,
              ),
            ),
            const SizedBox(height: 30),

            // Save Button
            CustomButton(
              text: "Save",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Packaging & Delivery details saved!")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
