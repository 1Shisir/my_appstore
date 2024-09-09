import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_appstore/views/app_detail_screen.dart';

class AppCard extends StatelessWidget {
  const AppCard(
      {super.key,
      required this.appName,
      required this.category,
      required this.description});

  final String appName, category, description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const AppDetailScreen());
      },
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                appName, // Replace with app name
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(category), // Replace with category
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(description), // Replace with category
            ),
          ],
        ),
      ),
    );
  }
}
