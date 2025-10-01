import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Erika Atthacarya 2341760158'),
        ),
        body: titleSection, // tampilkan titleSection di body
      ),
    );
  }
}

// Widget titleSection
Widget titleSection = Container(
  padding: const EdgeInsets.all(32), 
  child: Row(
    children: [
      Expanded(
        // soal 1: Column di dalam Expanded
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            // soal 2: teks judul dengan padding bawah 8
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
      // soal 3: ikon bintang merah + angka 41
      const Icon(
        Icons.star,
        color: Colors.red,
      ),
      const Text('41'),
    ],
  ),
);
