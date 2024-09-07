import 'package:flutter/material.dart';

class AppDetailScreen extends StatelessWidget {
  const AppDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'), // Replace with app name
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'https://via.placeholder.com/150', // Replace with app icon
                height: 150,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'App Name', // Replace with app name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Developer Name'), // Replace with developer name
            const SizedBox(height: 20),
            const Text('App Description'), // Replace with app description
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle download
              },
              child: const Text('Download'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Reviews',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with actual number of reviews
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('User Name'), // Replace with user name
                    subtitle:
                        Text('Review content'), // Replace with review content
                    trailing: Icon(Icons.star,
                        color: Colors.yellow), // Replace with actual rating
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
