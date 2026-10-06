import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String extraMessage = (ModalRoute.of(context)?.settings.arguments as String?) ?? 'No arguments provided';

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.info_outline,
              size: 80,
            ),
            const SizedBox(height: 20),
            const Text(
              'Detail Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Info: $extraMessage',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}