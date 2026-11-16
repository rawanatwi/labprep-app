import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double answer;
  final double finalVolume;
  final String unit;
  final bool showDiluent;

  const Result({
    super.key,
    required this.answer,
    required this.finalVolume,
    required this.unit,
    required this.showDiluent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('C1 x V1 = C2 x V2'),
            Text('Stock Volume: ${answer.toStringAsFixed(2)} $unit'),
            if (showDiluent)
              Text(
                'Diluent: ${(finalVolume - answer).toStringAsFixed(2)} $unit',
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
