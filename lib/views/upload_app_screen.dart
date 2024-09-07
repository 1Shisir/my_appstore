import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadAppScreen extends StatefulWidget {
  const UploadAppScreen({super.key});

  @override
  _UploadAppScreenState createState() => _UploadAppScreenState();
}

class _UploadAppScreenState extends State<UploadAppScreen> {
  final _formKey = GlobalKey<FormState>();
  String _appName = '';
  String _description = '';
  String _version = '';
  String _category = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'App Name'),
                onSaved: (value) => _appName = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                onSaved: (value) => _description = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Version'),
                onSaved: (value) => _version = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Category'),
                onSaved: (value) => _category = value!,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  // Pick an icon
                  final result = await FilePicker.platform.pickFiles();
                  if (result == null) return;
                },
                child: const Text('Pick Icon'),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Pick an APK file
                  // Use file picker for APKs
                },
                child: const Text('Pick APK'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Handle app upload
                  }
                },
                child: const Text('Upload App'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
