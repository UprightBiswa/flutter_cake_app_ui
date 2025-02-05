import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../widgets/custom_button.dart';
import 'add_product_page.dart';

class ProductManagementPage extends StatelessWidget {
  const ProductManagementPage({super.key});

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
        title: const Text("VANILLA CAKE"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            const Text("In Stock:", style: AppTextStyles.subtitle),
            const SizedBox(height: 10),

            // In Stock Items List
            _buildProductTile(
              "Black Forest Cake",
              "02/07/2024",
            ),
            _buildProductTile(
              "Black Forest Cake",
              "02/07/2024",
            ),
            const SizedBox(height: 20),

            // Out of Stock Section
            const Text("Out of Stock:", style: AppTextStyles.subtitle),
            const SizedBox(height: 10),

            // Out of Stock Items List
            _buildProductTile(
              "Black Forest Cake",
              "02/07/2024",
            ),
            _buildProductTile(
              "Black Forest Cake",
              "02/07/2024",
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      //contienr top 2 conrer ner rouned shodwo show column 3 buttion 2 in one row onw in

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomButton(
                        text: "Add On Items",
                        radius: 20,
                        borderColor: true,
                        onPressed: () {}),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                        text: "Options",
                        radius: 20,
                        borderColor: true,
                        onPressed: () {}),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: "Add Product",
                radius: 20,
                onPressed: () {
                  Get.to(() => const AddProductPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductTile(
    String name,
    String date,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black.withOpacity(0.25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //index chnge icon in lsit view 3 line horizontaly
          const Icon(
            Icons.drag_handle,
            color: AppColors.grey,
          ),
          const SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTextStyles.subtitle.copyWith(
                  color: AppColors.primary,
                ),
              ),
              Text("Added On: $date", style: AppTextStyles.hintText),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            color: AppColors.grey,
          ),
        ],
      ),
    );
  }
}
