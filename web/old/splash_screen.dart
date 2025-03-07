import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zylentrix/app/constants/app_colors.dart' show AppColors;
import 'package:zylentrix/app/constants/app_text_styles.dart' show AppTextStyles;
import 'manage_shop_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to ManageShopPage after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const ManageShopPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Icon
            const Icon(Icons.local_post_office, size: 100, color: AppColors.white),

            const SizedBox(height: 20),
            Text("Zylentrix Management",
                style: AppTextStyles.heading.copyWith(color: AppColors.white)),
            const SizedBox(height: 10),
            Text("For queries, reach out to `careers@zylentrix.net`",
                style: AppTextStyles.body.copyWith(color: AppColors.white)),
            const SizedBox(height: 30),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
