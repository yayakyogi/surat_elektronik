import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/menu.dart';
import 'package:surat_elektronik/utils/transition_page.dart';

class ModalButton {
  onBackPressed({required BuildContext context}) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        title: const Text('Yakin ingin keluar dari kuis?'),
        content: const Text(
          'Ketika keluar kuis jawaban kamu sebelumnya akan terreset dari awal lagi',
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: const Text("Tidak"),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              ExitPage(page: const Menu()),
            ),
            child: const Text("Ya"),
          ),
        ],
      ),
    );
  }
}
