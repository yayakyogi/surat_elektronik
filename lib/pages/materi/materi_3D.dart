import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_3E.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/layout_materi.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';

class Materi3D extends StatelessWidget {
  const Materi3D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LayoutMateri(
        backgroundImage: 'img_menu_pengelolaan.jpg',
        marginTop: 160,
        marginBottom: 20,
        widget: TemplateMateri(
          title: '3.	Sudah memiliki akun g-mail',
          image: 'img_4.png',
          materi:
              'Apabila anda sudah memiliki akun g-mail ,setelah masuk ke halaman awal gmail,anda cukup megisi kolom email or phone dengan alamat akun gmail anda.selanjutnya klik next.',
        ),
      ),
      bottomSheet: MateriController(page: Materi3E()),
    );
  }
}
