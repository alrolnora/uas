import 'package:flutter/material.dart';
import 'package:uas/calories_screen.dart';
import 'package:uas/description_screen.dart';
import 'package:uas/heart_screen.dart';
import 'package:uas/profile_screen.dart';
import 'package:uas/utils/constant.dart';
import 'package:uas/water_screen.dart';
import 'package:uas/nutrition_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Text('Aplikasi Kalkulator Kesehatan Multifungsi'),
          ),
          ListTile(
            leading: Image.asset(
              '${assetIcons}kal1.png',
              width: 24,
              height: 24,
            ),
            title: const Text(
              'Kalori Harian',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CalorieCalculator(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              '${assetIcons}water1.png',
              width: 24,
              height: 24,
            ),
            title: const Text(
              'Konsumsi Air',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WaterIntakeCalculator(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              '${assetIcons}nut1.png',
              width: 24,
              height: 24,
            ),
            title: const Text(
              'Nutrisi',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NutritionCalculator(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              '${assetIcons}heart1.png',
              width: 24,
              height: 24,
            ),
            title: const Text(
              'Detak Jantung',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HeartRateCalculator(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              '${assetIcons}profil1.png',
              width: 24,
              height: 24,
            ),
            title: const Text(
              'Profil',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              '${assetIcons}desc1.png',
              width: 24,
              height: 24,
            ),
            title: const Text(
              'Deskripsi',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DescriptionScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
