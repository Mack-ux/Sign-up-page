import 'package:flutter/material.dart';

class SignSuccess extends StatelessWidget {
  final Map<String, String> userData;

  const SignSuccess({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signup Successful')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Signup Successful!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            
            // Display User Data
            Text('Full Name: ${userData['name']}',
                style: const TextStyle(fontSize: 18)),
            Text('Email: ${userData['email']}',
                style: const TextStyle(fontSize: 18)),
            Text('Date of Birth: ${userData['dob']}',
                style: const TextStyle(fontSize: 18)),
            Text('Password: ${userData['password']}',
                style: const TextStyle(fontSize: 18)),
                

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

