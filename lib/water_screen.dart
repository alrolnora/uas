import 'package:flutter/material.dart';

class WaterIntakeCalculator extends StatefulWidget {
  @override
  _WaterIntakeCalculatorState createState() => _WaterIntakeCalculatorState();
}

class _WaterIntakeCalculatorState extends State<WaterIntakeCalculator> {
  TextEditingController weightController = TextEditingController();
  String selectedActivity = 'Ringan';
  double waterIntake = 0.0;

  Map<String, double> activityLevels = {
    'Ringan': 30.0,
    'Sedang': 35.0,
    'Berat': 40.0,
  };

  void calculateWaterIntake() {
    double weight = double.parse(weightController.text);
    double activity = activityLevels[selectedActivity]!;
    waterIntake = weight * activity;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Asupan Air'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Berat (kg)'),
            ),
            const SizedBox(height: 10.0),
            const Text('Level Aktivitas:'),
            const SizedBox(height: 10.0),
            DropdownButton<String>(
              value: selectedActivity,
              onChanged: (value) {
                setState(() {
                  selectedActivity = value!;
                });
              },
              items: activityLevels.keys.map((String activity) {
                return DropdownMenuItem<String>(
                  value: activity,
                  child: Text(activity),
                );
              }).toList(),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: calculateWaterIntake,
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Kebutuhan Air Harian : ${waterIntake.toStringAsFixed(2)} mL/hari',
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
    home: WaterIntakeCalculator(),
  ));
}
