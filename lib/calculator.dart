
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double c1 = -1;
  double c2 = -1;
  double v2 = -1;
  String result = '';

  void calculate() {
    setState(() {
      if (c1 <= 0 || c2 <= 0 || v2 <= 0 || c2 > c1) {
        result = 'Enter valid values';
      } else {
        double v1 = (c2 * v2) / c1;
        result = 'Stock Volume: $v1 mL';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dilution Calculator'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),

              Text('C1 x V1 = C2 x V2'),

              SizedBox(height: 20),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Initial Concentration C1',
                ),
                onChanged: (text) {
                  c1 = double.tryParse(text) ?? -1;
                },
              ),

              SizedBox(height: 20),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Desired Concentration C2',
                ),
                onChanged: (text) {
                  c2 = double.tryParse(text) ?? -1;
                },
              ),

              SizedBox(height: 20),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Final Volume V2 (mL)',
                ),
                onChanged: (text) {
                  v2 = double.tryParse(text) ?? -1;
                },
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  calculate();
                },
                child: Text('Calculate'),
              ),

              SizedBox(height: 20),

              Text(result),
            ],
          ),
        ),
      ),
    );
  }
}
