import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Replace with profile picture
            ),
            const SizedBox(height: 20),
            const Text(
              'Username', // Replace with actual username
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Replace with actual number of uploaded apps
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('App Name'), // Replace with app name
                    subtitle: Text('Version 1.0'), // Replace with app version
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
