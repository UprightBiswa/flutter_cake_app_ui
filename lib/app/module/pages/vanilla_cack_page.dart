import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../widgets/custom_button.dart';

class ProductManagementPage extends StatelessWidget {
  const ProductManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vanilla Cake"),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            Text("IN STOCK:", style: AppTextStyles.heading),
            const SizedBox(height: 10),

            // In Stock Items List
            _buildProductTile("Black Forest Cake", "02/07/2024", true),
            _buildProductTile("Black Forest Cake", "02/07/2024", true),
            const SizedBox(height: 20),

            // Out of Stock Section
            Text("OUT OF STOCK:", style: AppTextStyles.heading),
            const SizedBox(height: 10),

            // Out of Stock Items List
            _buildProductTile("Black Forest Cake", "02/07/2024", false),
            _buildProductTile("Black Forest Cake", "02/07/2024", false),
            const SizedBox(height: 30),

            // Add-On Items & Options
            CustomButton(text: "Add On Items", onPressed: () {}),
            const SizedBox(height: 10),
            CustomButton(text: "Options", onPressed: () {}),
            const SizedBox(height: 20),

            // Add Product Button
            Center(
              child: CustomButton(
                text: "Add Product",
                onPressed: () {},
                isPrimary: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductTile(String name, String date, bool inStock) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: inStock ? Colors.green.withOpacity(0.1) : Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: inStock ? Colors.green : Colors.red),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppTextStyles.subtitle),
              Text("Added On: $date", style: AppTextStyles.hintText),
            ],
          ),
          Icon(
            inStock ? Icons.check_circle : Icons.cancel,
            color: inStock ? Colors.green : Colors.red,
          ),
        ],
      ),
    );
  }
}
