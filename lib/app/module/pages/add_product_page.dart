import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_image_picker.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // In Stock Status
            Text("In Stock Status:*", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            const CustomDropdown(
              hintText: "Select Stock Status",
              items: ["In Stock", "Out of Stock"],
            ),
            const SizedBox(height: 15),

            // Upload Product Images
            Text("Upload Product Images:", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            Text("Customers can add up to 2 product images for customization!",
                style: AppTextStyles.hintText),
            const SizedBox(height: 10),
            const CustomImagePicker(),
            const SizedBox(height: 20),

            // Food Preference
            Text("Food Preference:*", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            const CustomDropdown(
              hintText: "Select Food Type",
              items: ["Vegetarian", "Non-Vegetarian", "Vegan"],
            ),
            const SizedBox(height: 15),

            // Product Name
            Text("Product Name:*", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            const CustomTextField(hintText: "Enter Product Name"),
            const SizedBox(height: 15),

            // Description
            Text("Description:*", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            const CustomTextField(
              hintText: "Write Product Description!",
              maxLength: 500,
            ),
            const SizedBox(height: 15),

            // Serving Information
            Text("Serving Information:", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            const CustomTextField(
              hintText: "Write Serving Information!",
              maxLength: 500,
            ),
            const SizedBox(height: 15),

            // Note
            Text("Note:", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            const CustomTextField(
              hintText: "Write Note!",
              maxLength: 500,
            ),
            const SizedBox(height: 15),

            // Flavour, Size & Price Chart
            Text("Flavour, Size & Price Chart:*", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            CustomButton(text: "Edit List", onPressed: () {}),
            const SizedBox(height: 15),

            // Customizations
            Text("Customizations:", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            CustomButton(text: "Edit List", onPressed: () {}),
            const SizedBox(height: 15),

            // Add Product Image
            Text("Add Product Image (Max 1):*", style: AppTextStyles.heading),
            const SizedBox(height: 5),
            const CustomImagePicker(),
            const SizedBox(height: 20),

            // Mandatory Fields Note
            Center(
              child: Text("* Indicates Mandatory Fields!",
                  style: AppTextStyles.hintText),
            ),
            const SizedBox(height: 20),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(text: "Copy", onPressed: () {}),
                CustomButton(text: "Save", onPressed: () {}, isPrimary: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
