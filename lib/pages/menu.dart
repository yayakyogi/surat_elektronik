import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_menu.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MENU',
              style: fw_600.copyWith(fontSize: 32, color: whiteColor),
            ),
            const SizedBox(height: 60),
            ButtonSubmit(onPressed: () {}, title: 'PETUNJUK'),
            const SizedBox(height: 20),
            ButtonSubmit(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MateriMenu()),
                );
              },
              title: 'MATERI',
            ),
            const SizedBox(height: 20),
            ButtonSubmit(onPressed: () {}, title: 'KUIS'),
            const SizedBox(height: 50),
            ButtonSubmit(onPressed: () {}, title: 'Exit', isButtonSmall: true),
          ],
        ),
      ),
    );
  }
}
