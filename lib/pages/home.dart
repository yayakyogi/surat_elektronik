import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/menu.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              'SMK N 2 Tulungagung',
              style: fw_500.copyWith(
                fontSize: 28,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Presents.',
              style: fw_400.copyWith(
                fontSize: 16,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Mobile Learning',
              style: fw_400.copyWith(
                fontSize: 20,
                color: whiteColor,
              ),
            ),
            Text(
              'Surat Elektronik',
              style: fw_400.copyWith(
                fontSize: 24,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/img_gmail.png',
              width: 100,
            ),
            const SizedBox(height: 70),
            ButtonSubmit(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Menu()),
                );
              },
              title: 'Play',
            )
          ],
        ),
      ),
    );
  }
}
