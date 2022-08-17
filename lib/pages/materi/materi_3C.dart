import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_3D.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';

class Materi3C extends StatelessWidget {
  const Materi3C({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: const TemplateMateri(
        title: '2.	Lupa akun Gmail',
        image: 'img_3.png',
        materi:
            'Saat menggunakan email,seringkali kita mengalami kejadian seperti lupa alamat email akunatau lupa password.apabila anda lupa,anda dapat memilih menu fogot email.Berikut tampilan untuk lupa kata sandi',
      ),
      bottomSheet: MateriController(
        onNext: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Materi3D()),
          );
        },
      ),
    );
  }
}
