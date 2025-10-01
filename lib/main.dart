import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget titleSection
  Widget get titleSection => Container(
        padding: const EdgeInsets.all(32), // padding luar 32
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
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Text(
                    'Batu, Malang, Indonesia',
                    style: TextStyle(
                      color: Colors.grey, // warna abu-abu
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
            const SizedBox(width: 4), // jarak sedikit sebelum angka
            const Text('41'),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Erika Atthacarya 2341760158',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Erika Atthacarya 2341760158'),
        ),
        body: Column(
          children: [
            titleSection, // tampilkan titleSection di body
          ],
        ),
      ),
    );
  }
}
