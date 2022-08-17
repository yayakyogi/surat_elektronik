import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';

class TextMateri extends StatelessWidget {
  const TextMateri({Key? key, required this.materi}) : super(key: key);
  final String materi;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        materi,
        style: fw_400.copyWith(
          fontSize: 16,
          color: primaryColor,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
