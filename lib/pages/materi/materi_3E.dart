import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_3F.dart';
import 'package:surat_elektronik/widgets/layout_materi.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';

class Materi3E extends StatelessWidget {
  const Materi3E({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LayoutMateri(
        backgroundImage: 'img_menu_pengelolaan.jpg',
        marginTop: 160,
        marginBottom: 20,
        widget: TemplateMateri(
          title: '',
          image: 'img_5.png',
          materi:
              'Setelah Mengklik, akan muncul laman enter password,Masukan password akun gmail anda.',
        ),
      ),
      bottomSheet: MateriController(page: Materi3F()),
    );
  }
}
