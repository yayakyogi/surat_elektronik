import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/kuis/kuis1.dart';
import 'package:surat_elektronik/pages/materi/materi_menu.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_menu1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/img_menu_petunjuk.png',
                width: 300,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context, EnterPage(page: const MateriMenu()));
              },
              child: Image.asset(
                'assets/images/img_menu_materi.png',
                width: 300,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  EnterPage(page: const Kuis1()),
                );
              },
              child: Image.asset(
                'assets/images/img_menu_kuis.png',
                width: 300,
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/images/img_button_exit.png',
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
