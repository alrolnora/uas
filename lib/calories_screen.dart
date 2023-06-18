import 'package:flutter/material.dart';

class CalorieCalculator extends StatefulWidget {
  @override
  _CalorieCalculatorState createState() => _CalorieCalculatorState();
}

class _CalorieCalculatorState extends State<CalorieCalculator> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String gender = 'Pria';
  double bmr = 0.0;

  void calculateBMR() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text);
    int age = int.parse(ageController.text);

    if (gender == 'Pria') {
      bmr = 66.5 + (13.75 * weight) + (5 * height) - (6.75 * age);
    } else {
      bmr = 655.1 + (9.56 * weight) + (1.85 * height) - (4.68 * age);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Kebutuhan Kalori Harian'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Berat Badan (kg)'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Tinggi Badan (cm)'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Usia'),
            ),
            const SizedBox(height: 10.0),
            DropdownButton<String>(
              value: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
              items: ['Pria', 'Wanita'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: calculateBMR,
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 10.0),
            Text(
              'BMR: ${bmr.toStringAsFixed(2)} kalori/hari',
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CalorieCalculator(),
  ));
}
