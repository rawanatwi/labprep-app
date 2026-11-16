import 'package:flutter/material.dart';
import 'calculator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LabPrep')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to LabPrep'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calculator(),
                  ),
                );
              },
              child: Text('Start Calculation'),
            ),
          ],
        ),
      ),
    );
  }
}
