import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';

class Materi3D extends StatelessWidget {
  const Materi3D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: const TemplateMateri(
        title: '3.	Sudah memiliki akun g-mail',
        image: 'img_4.png',
        materi:
            'Apabila anda sudah memiliki akun g-mail ,setelah masuk ke halaman awal gmail,anda cukup megisi kolom email or phone dengan alamat akun gmail anda.selanjutnya klik next.',
      ),
      bottomSheet: MateriController(
        onNext: () {},
      ),
    );
  }
}
