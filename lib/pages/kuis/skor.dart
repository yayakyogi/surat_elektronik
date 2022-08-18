import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surat_elektronik/bloc/skor_bloc/skor_bloc.dart';
import 'package:surat_elektronik/pages/home.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';

class Skor extends StatelessWidget {
  const Skor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Skor kamu',
              style: fw_500.copyWith(fontSize: 24, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/images/img_skor.png', width: 150),
            const SizedBox(height: 15),
            BlocBuilder<SkorBloc, SkorState>(
              builder: (context, state) {
                return Text(
                  '${state.skor}',
                  style: fw_500.copyWith(fontSize: 40, color: Colors.black),
                );
              },
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  ExitPage(page: const Home()),
                );
                context.read<SkorBloc>().add(const SkorEvent(skor: 0));
              },
              child: Image.asset(
                'assets/images/img_button_home.png',
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
