import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget titleSection
  Widget get titleSection => Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Wisata Gunung di Batu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Text(
                    'Batu, Malang, Indonesia',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.star,
              color: Colors.red,
            ),
            const SizedBox(width: 4),
            const Text('41'),
          ],
        ),
      );

  // Langkah 1: Buat method _buildButtonColumn
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor; // pakai warna primer

    // Langkah 2: buat button row
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
      //Langkah 1 praktikum 3: Buat widget textSection
      Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Bromo merupakan salah satu gunung berapi aktif yang terletak di Provinsi Jawa Timur, Indonesia.' 
        'Gunung ini berada di kawasan Taman Nasional Bromo Tengger Semeru dan memiliki ketinggian sekitar 2.329 meter di atas permukaan laut.' 
        'Dikenal dengan pemandangan matahari terbitnya yang menakjubkan, '
        'Gunung Bromo menjadi salah satu destinasi wisata paling populer di Indonesia.'
        'Erika Atthacarya Putri Cahyani NIM: 2341760158',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Erika Atthacarya 2341760158',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Erika Atthacarya 2341760158'),
        ),
        body: Column(
          children: [
            titleSection,  // tampilkan Wisata Gunung Batu
            buttonSection, // tampilkan CALL,ROUTE,SHARE
            textSection, // tampilkan paragraf tugas praktikum
          ],
        ),
      ),
    );
  }
}
