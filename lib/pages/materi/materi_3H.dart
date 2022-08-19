import 'package:flutter/material.dart';
import 'package:surat_elektronik/widgets/layout_materi.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';

class Materi3H extends StatelessWidget {
  const Materi3H({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LayoutMateri(
        backgroundImage: 'img_menu_pengelolaan.jpg',
        marginTop: 160,
        marginBottom: 20,
        widget: TemplateMateri(
          title: '',
          image: 'img_9.png',
          materi:
              'Setelah mengeklik menu compose,anda akan melihatkotak new message,berikut adalah Tampilan untuk new message tersebut',
        ),
      ),
      bottomSheet: MateriController(
        page: Materi3H(),
        isLastPagee: true,
      ),
    );
  }
}
