import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/text_materi.dart';

class TemplateMateri extends StatelessWidget {
  const TemplateMateri({
    Key? key,
    required this.image,
    required this.title,
    required this.materi,
  }) : super(key: key);

  final String title;
  final String materi;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Text(
              'Pengelolaan dan Pengiriman Surat Melalui Email',
              style: fw_500.copyWith(
                fontSize: 20,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 20),
            TextMateri(materi: title),
            TextMateri(materi: materi),
            const SizedBox(height: 20),
            Image.asset('assets/images/$image', height: 350),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
