import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_appstore/common/widgets/appcard.dart';
import 'package:my_appstore/controller/getAppsController.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = ['Games', 'Productivity', 'Social', 'Health'];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Chip(
                      label: Text(categories[index]),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              // child: GridView.builder(
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     childAspectRatio: 3 / 4,
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 10,
              //   ),
              //   itemCount: 10, // Replace with actual number of apps
              //   itemBuilder: (context, index) {
              //     return const AppCard();
              //   },
              // ),
              child: FutureBuilder<List<dynamic>>(
                builder: (context, snapshot) => GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return AppCard(
                      appName: snapshot.data![index]['name'],
                      category: snapshot.data![index]['category'],
                      description: snapshot.data![index]['description'],
                    );
                  },
                ),
                future: controller.fetchApps(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
