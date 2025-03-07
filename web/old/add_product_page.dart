import 'package:flutter/material.dart';

import '../../lib/app/constants/app_colors.dart';
import '../../lib/app/constants/app_text_styles.dart';
import 'custom_dropdown.dart';
import 'custom_text_field.dart';
import 'custom_button.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

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
        title: const Text("ADD PRODUCT"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // In Stock Status
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "In Stock Status:",
                      style: AppTextStyles.subtitle,
                    ),
                    TextSpan(
                      text: "*",
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ],
                )),
                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.primary,
                ),
              ],
            ),
            // Upload Product Images
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Upload Product Images:",
                    style: AppTextStyles.subtitle),
                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.primary,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text("Customers can add up to 2 product images for customization!",
                style: AppTextStyles.subtitle.copyWith(
                  color: AppColors.grey,
                )),
            const SizedBox(height: 10),
            // Food Preference
            const Text("Food Preference:*", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            CustomDropdown(
              hintText: "Select Food Type",
              onChanged: (value) {},
              items: const ["Vegetarian", "Non-Vegetarian", "Vegan"],
            ),
            const SizedBox(height: 15),

            // Product Name
            const Text("Product Name:*", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(hintText: "Enter Product Name"),
            const SizedBox(height: 15),

            // Description
            const Text("Description:*", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(
              hintText: "Write Product Description!",
              maxline: 3,
              maxLength: 500,
            ),
            const SizedBox(height: 15),

            // Serving Information
            const Text("Serving Information:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(
              hintText: "Write Serving Information!",
              maxline: 3,
              maxLength: 500,
            ),
            const SizedBox(height: 15),

            // Note
            const Text("Note:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            const CustomTextField(
              hintText: "Write Note!",
              maxline: 3,
              maxLength: 500,
            ),
            const SizedBox(height: 15),

            // Flavour, Size & Price Chart
            const Text("Flavour, Size & Price Chart:*",
                style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            CustomButton(text: "Edit List", onPressed: () {}),
            const SizedBox(height: 15),

            // Customizations
            const Text("Customizations:", style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            CustomButton(text: "Edit List", onPressed: () {}),
            const SizedBox(height: 15),

            // Add Product Image
            const Text("Add Product Image (Max 1):*",
                style: AppTextStyles.subtitle),
            const SizedBox(height: 5),
            CustomButton(
              text: "Add Image",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Add Image")),
                );
              },
            ),
            const SizedBox(height: 20),

            // Mandatory Fields Note
            const Center(
              child: Text("* Indicates Mandatory Fields!",
                  style: AppTextStyles.hintText),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              spreadRadius: 0,
              blurRadius: 13,
              offset: const Offset(0, -5), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButton(
                text: "Copy",
                radius: 20,
                borderColor: true,
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: "Save",
                radius: 20,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
