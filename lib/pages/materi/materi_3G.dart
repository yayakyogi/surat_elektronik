import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_3H.dart';
import 'package:surat_elektronik/widgets/layout_materi.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';

class Materi3G extends StatelessWidget {
  const Materi3G({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LayoutMateri(
        backgroundImage: 'img_menu_pengelolaan.jpg',
        marginTop: 160,
        marginBottom: 20,
        widget: TemplateMateri(
          title: '4.	Membuat E-mail Baru  (pesan)',
          image: 'img_7.png',
          materi:
              'Surat berkorespindensi menggunakan surat elektronik atau e-mail, Anda akan dihadapkan pada situasi ketika Anda harus membuat E-mail baru. Apabila e-mail baru tersebut merupakan e-mail balasan dari e-mail yang masuk ke inbox Anda, Anda dapar langsung menggunakan tab menu Reply. Namun, jika e-mail baru tersebut bukanlah e-mail balasan, Anda dapat menggunakan menu Compose. Setelah mengklik menu Compose, Anda akan melihat tampilan layar berikut.',
        ),
      ),
      bottomSheet: MateriController(page: Materi3H()),
    );
  }
}
