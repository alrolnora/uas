import 'package:flutter/material.dart';

class HeartRateCalculator extends StatefulWidget {
  @override
  _HeartRateCalculatorState createState() => _HeartRateCalculatorState();
}

class _HeartRateCalculatorState extends State<HeartRateCalculator> {
  TextEditingController ageController = TextEditingController();
  int maxHeartRate = 0;
  int targetHeartRateLow = 0;
  int targetHeartRateHigh = 0;

  void calculateHeartRate() {
    int age = int.parse(ageController.text);

    maxHeartRate = 220 - age;
    targetHeartRateLow = (maxHeartRate * 0.5).toInt();
    targetHeartRateHigh = (maxHeartRate * 0.85).toInt();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Detak Jantung'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Masukkan Usia Anda',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Usia',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: calculateHeartRate,
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Hasil Perhitungan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Detak Jantung Maksimum: $maxHeartRate bpm',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Target Detak Jantung Saat Berolahraga:',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 5.0),
            Text(
              'Low: $targetHeartRateLow bpm',
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'High: $targetHeartRateHigh bpm',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HeartRateCalculator(),
  ));
}
