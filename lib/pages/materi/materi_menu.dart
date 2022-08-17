import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_1.dart';
import 'package:surat_elektronik/pages/materi/materi_2.dart';
import 'package:surat_elektronik/pages/materi/materi_3A.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';

class MateriMenu extends StatelessWidget {
  const MateriMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'MATERI',
                style: fw_600.copyWith(fontSize: 32, color: whiteColor),
              ),
            ),
            const SizedBox(height: 60),
            ButtonSubmit(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Materi1()),
                );
              },
              title: 'Pengertian Surat Elektronik',
              isButtonFull: true,
            ),
            const SizedBox(height: 15),
            ButtonSubmit(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Materi2()),
                );
              },
              title: 'Kelebihan dan Kekurangan E-Mail',
              isButtonFull: true,
            ),
            const SizedBox(height: 15),
            ButtonSubmit(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Materi3A()),
                );
              },
              title: 'Pengelolaan dan Pengiriman Email',
              isButtonFull: true,
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 50),
            Center(
              child: ButtonSubmit(
                onPressed: () {},
                title: 'Exit',
                isButtonSmall: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
