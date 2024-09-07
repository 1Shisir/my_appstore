import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_appstore/views/app_detail_screen.dart';

class AppCard extends StatelessWidget {
  const AppCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const AppDetailScreen());
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://via.placeholder.com/150', // Replace with app icon
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'App Name', // Replace with app name
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Category Name'), // Replace with category
            ),
          ],
        ),
      ),
    );
  }
}
