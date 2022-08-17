import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_3C.dart';
import 'package:surat_elektronik/utils/transition_page.dart';
import 'package:surat_elektronik/widgets/layout_materi.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';

class Materi3B extends StatelessWidget {
  const Materi3B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LayoutMateri(
        backgroundImage: 'img_menu_pengelolaan.jpg',
        marginTop: 160,
        marginBottom: 20,
        widget: TemplateMateri(
          title: '1.	Membuat Akun Gmail baru',
          image: 'img_2.png',
          materi:
              'Apabila anda belum memiliki akun gmail,and adapt membuka halaman awal gmail dan mengklik create account.setelah itu anda akan diminta untuk mengisi form yang meliputi nama lengkap,username,dan password email ',
        ),
      ),
      bottomSheet: MateriController(page: Materi3C()),
    );
  }
}
