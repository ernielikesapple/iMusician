import 'package:flutter/material.dart';

class CreateFeedsPage extends StatelessWidget {
  const CreateFeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moments'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('add more post related widgets'),
        ),
      ),
    );
  }
}
