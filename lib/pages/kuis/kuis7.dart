import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surat_elektronik/bloc/skor_bloc/skor_bloc.dart';
import 'package:surat_elektronik/pages/kuis/kuis6.dart';
import 'package:surat_elektronik/pages/kuis/kuis8.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';
import 'package:surat_elektronik/widgets/button_jawaban.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';
import 'package:surat_elektronik/widgets/layout_kuis.dart';

class Kuis7 extends StatefulWidget {
  const Kuis7({Key? key}) : super(key: key);

  @override
  State<Kuis7> createState() => _Kuis7State();
}

class _Kuis7State extends State<Kuis7> {
  int _index = 0;
  int _nilai = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutKuis(
      widget: ListView(
        children: [
          const SizedBox(height: 80),
          Text(
            'Soal 7',
            style: fw_500.copyWith(fontSize: 32),
          ),
          const SizedBox(height: 20),
          Text(
            'Fungsi menu Hangouts  yang ada pada akun Gmail adalah untuk...',
            style: fw_500.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 15),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 1;
                _nilai = 0;
              });
            },
            jawaban:
                'A.	Mengirimkan e-mail penting kepada para pengguna aku Gmail',
            isSelected: _index == 1 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 2;
                _nilai = 0;
              });
            },
            jawaban:
                'B.	Berkomunikasi melalui pesan singkat dengan sesame pengguna akun Gmail',
            isSelected: _index == 2 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 3;
                _nilai = 0;
              });
            },
            jawaban:
                'C.	Berkomunikasi melalui panggilan telpon dengan sesame pengguna akun Gmail',
            isSelected: _index == 3 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 4;
                _nilai = 0;
              });
            },
            jawaban:
                'D.	Mengirimkan updates terkait informasi dan fitur terbaru yang dimiliki akun Gmail',
            isSelected: _index == 4 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 5;
                _nilai = 10;
              });
            },
            jawaban:
                'E.	Berkomunikasi melalui chatroom dengan semua pemilik e-mail yang pernah mengirimkan pesan ke pengguna aku Gmail',
            isSelected: _index == 5 ? true : false,
          ),
          const SizedBox(height: 20),
          BlocBuilder<SkorBloc, SkorState>(
            builder: (context, state) {
              return ButtonSubmit(
                onPressed: () {
                  if (_index == 0) {
                    // widget pesan error
                    snackBarWidget() {
                      return SnackBar(
                        padding: const EdgeInsets.all(10),
                        duration: const Duration(seconds: 4),
                        backgroundColor: Colors.red[500],
                        content: const Text(
                          'Harap pilih jawaban terlebih dahulu',
                        ),
                        action: SnackBarAction(
                          textColor: whiteColor,
                          label: 'Tutup',
                          onPressed: () {},
                        ),
                      );
                    }

                    // munculkan pesan error
                    return ScaffoldMessenger.of(context).showSnackBar(
                      snackBarWidget(),
                    );
                  }
                  // tambahkan skor dari bloc dengan nilai
                  int skor = state.skor + _nilai;
                  // ubah skor
                  context.read<SkorBloc>().add(SkorEvent(skor: skor));
                  // pindah ke halaman berikutnya
                  Navigator.pushReplacement(
                    context,
                    EnterPage(page: const Kuis8()),
                  );
                },
                title: 'Simpan',
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
