import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HasilPost extends StatelessWidget {
  final String nama;
  final String job;

  const HasilPost({super.key, required this.nama, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Post'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nama),
            const SizedBox(
              height: 10,
            ),
            Text(job)
          ],
        ),
      ),
    );
  }
}
