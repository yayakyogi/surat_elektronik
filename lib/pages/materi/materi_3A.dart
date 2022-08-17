import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_3B.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';

class Materi3A extends StatelessWidget {
  const Materi3A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: const TemplateMateri(
        title:
            'Berikut akan dijelaskan mengenai Langkah-langkah mengakses e-mail yang terdapat dalam situs web (website) http://www.gmail.com dengan menggunakan web browser Google Chrome.',
        image: 'img_1.png',
        materi:
            'Langkah pertama masuk ke situs gmail.com sehingga akan terdapat tampilan sebagai berikut ',
      ),
      bottomSheet: MateriController(
        onNext: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Materi3B()),
          );
        },
      ),
    );
  }
}
