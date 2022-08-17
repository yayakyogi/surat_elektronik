import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/kesimpulan.dart';
import 'package:surat_elektronik/pages/materi/materi_1.dart';
import 'package:surat_elektronik/pages/materi/materi_2.dart';
import 'package:surat_elektronik/pages/materi/materi_3A.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';

class MateriMenu extends StatelessWidget {
  const MateriMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img_bg_menu_materi.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, EnterPage(page: const Materi1()));
                    },
                    child: Image.asset(
                      'assets/images/img_menu_materi1.png',
                      width: 250,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, EnterPage(page: const Materi2()));
                    },
                    child: Image.asset(
                      'assets/images/img_menu_materi2.png',
                      width: 250,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, EnterPage(page: const Materi3A()));
                    },
                    child: Image.asset(
                      'assets/images/img_menu_materi3.png',
                      width: 250,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        EnterPage(page: const Kesimpulan()),
                      );
                    },
                    child: Image.asset(
                      'assets/images/img_menu_materi4.png',
                      width: 250,
                    ),
                  ),
                ],
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
      ),
    );
  }
}
