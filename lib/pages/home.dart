import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:surat_elektronik/pages/menu.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            title: const Text('Yakin ingin keluar dari aplikasi'),
            actions: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: const Text("Tidak"),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  SystemNavigator.pop();
                },
                child: const Text("Ya"),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img_bg_home.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 320),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, EnterPage(page: const Menu()));
                },
                child: Image.asset(
                  'assets/images/img_button_awal.png',
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
