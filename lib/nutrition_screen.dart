import 'package:flutter/material.dart';

class NutritionCalculator extends StatefulWidget {
  @override
  _NutritionCalculatorState createState() => _NutritionCalculatorState();
}

class _NutritionCalculatorState extends State<NutritionCalculator> {
  TextEditingController carbController = TextEditingController();
  TextEditingController proteinController = TextEditingController();
  TextEditingController fatController = TextEditingController();
  double totalCalories = 0.0;
  double carbPercentage = 0.0;
  double proteinPercentage = 0.0;
  double fatPercentage = 0.0;

  void calculateNutrition() {
    double carbs = double.parse(carbController.text);
    double protein = double.parse(proteinController.text);
    double fat = double.parse(fatController.text);

    totalCalories = (carbs * 4) + (protein * 4) + (fat * 9);
    carbPercentage = (carbs * 4 / totalCalories) * 100;
    proteinPercentage = (protein * 4 / totalCalories) * 100;
    fatPercentage = (fat * 9 / totalCalories) * 100;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Nutrisi'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: carbController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Karbohidrat (g)'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: proteinController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Protein (g)'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: fatController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Lemak (g)'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: calculateNutrition,
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Total Kalori: ${totalCalories.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Presentasi Karbohidrat: ${carbPercentage.toStringAsFixed(2)}%',
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              'Presentase Protein: ${proteinPercentage.toStringAsFixed(2)}%',
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              'Presentase Lemak: ${fatPercentage.toStringAsFixed(2)}%',
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
    home: NutritionCalculator(),
  ));
}
