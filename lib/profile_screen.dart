import 'package:flutter/material.dart';
import 'package:uas/utils/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${assetImages}girl.png'),
                ),
              ),
            ),
            const Card(
              child: ExpansionTile(
                collapsedIconColor: Colors.deepPurple,
                collapsedTextColor: Colors.deepPurple,
                title: Text(
                  'Nomor Induk Mahasiswa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('2103040093'),
                  ),
                ],
              ),
            ),
            const Card(
              child: ExpansionTile(
                collapsedIconColor: Colors.deepPurple,
                collapsedTextColor: Colors.deepPurple,
                title: Text(
                  'Nama Lengkap',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('Fima Rizqina Mubaroka'),
                  ),
                ],
              ),
            ),
            const Card(
              child: ExpansionTile(
                collapsedIconColor: Colors.deepPurple,
                collapsedTextColor: Colors.deepPurple,
                title: Text(
                  'Mata Kuliah',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('Pemrograman Aplikasi Mobile C2'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
