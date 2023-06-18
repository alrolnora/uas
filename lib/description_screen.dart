import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSection(
              title: 'BMI (Body Mass Index)',
              description:
                  'BMI (Body Mass Index) adalah sebuah ukuran yang digunakan untuk mengevaluasi apakah berat badan seseorang proporsional terhadap tinggi badan mereka. Aplikasi ini dapat membantu Anda menghitung BMI Anda dan memberikan informasi apakah berat badan Anda berada dalam kisaran yang sehat atau tidak.',
              icon: Icons.calculate,
            ),
            const SizedBox(height: 16.0),
            _buildSection(
              title: 'Kalori Harian',
              description:
                  'Aplikasi ini juga dapat membantu Anda menghitung kebutuhan kalori harian Anda berdasarkan faktor-faktor seperti usia, jenis kelamin, tinggi badan, berat badan, dan tingkat aktivitas fisik. Dengan mengetahui kebutuhan kalori harian Anda, Anda dapat mengatur pola makan Anda dengan lebih baik.',
              icon: Icons.food_bank,
            ),
            const SizedBox(height: 16.0),
            _buildSection(
              title: 'Konsumsi Air',
              description:
                  'Konsumsi air yang cukup penting untuk menjaga kesehatan tubuh. Aplikasi ini dapat membantu Anda menghitung kebutuhan cairan harian Anda berdasarkan faktor-faktor seperti berat badan dan tingkat aktivitas. Dengan mengetahui berapa banyak air yang sebaiknya Anda minum setiap hari, Anda dapat menjaga tubuh tetap terhidrasi dengan baik.',
              icon: Icons.local_drink,
            ),
            const SizedBox(height: 16.0),
            _buildSection(
              title: 'Nutrisi',
              description:
                  'Nutrisi yang seimbang penting untuk menjaga kesehatan dan keseimbangan tubuh. Aplikasi ini menyediakan informasi nutrisi penting yang diperlukan oleh tubuh serta memberikan saran tentang asupan makanan yang sehat dan bergizi. Anda dapat menggunakan aplikasi ini untuk mengelola pola makan Anda dan memastikan asupan nutrisi yang cukup.',
              icon: Icons.restaurant_menu,
            ),
            const SizedBox(height: 16.0),
            _buildSection(
              title: 'Detak Jantung',
              description:
                  'Detak jantung adalah indikator penting kesehatan jantung dan tingkat kebugaran fisik. Aplikasi ini dapat membantu Anda menghitung detak jantung maksimum Anda berdasarkan usia Anda. Selain itu, Anda juga dapat menentukan target detak jantung saat berolahraga untuk mencapai tujuan kebugaran Anda.',
              icon: Icons.favorite,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.black),
                const SizedBox(width: 8.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
