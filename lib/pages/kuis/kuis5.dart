import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surat_elektronik/bloc/skor_bloc/skor_bloc.dart';
import 'package:surat_elektronik/pages/kuis/kuis6.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';
import 'package:surat_elektronik/widgets/button_jawaban.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';
import 'package:surat_elektronik/widgets/layout_kuis.dart';

class Kuis5 extends StatefulWidget {
  const Kuis5({Key? key}) : super(key: key);

  @override
  State<Kuis5> createState() => _Kuis5State();
}

class _Kuis5State extends State<Kuis5> {
  int _index = 0;
  int _nilai = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutKuis(
      widget: ListView(
        children: [
          const SizedBox(height: 70),
          Text(
            'Soal 5',
            style: fw_500.copyWith(fontSize: 32),
          ),
          const SizedBox(height: 20),
          Text(
            'Hal yang dapat ditemukan di dalam menu Starred adalah...',
            style: fw_500.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 15),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 1;
                _nilai = 10;
              });
            },
            jawaban:
                'A.	Informasi tentang e-mail yang telah Anda tandai di menu Inbox agar mudah ditemukan jika sewaktu-waktu Anda mencari e-mail tersebut',
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
                'B.	Informasi tentang e-mail yang telah Anda buat, tetapi masih dalam bentuk rencana (draft) dan belum dikirimkan ke e-mail orang lain',
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
                'C.	Informasi tentang semuan e-mail yang pernah masuk,keluar,dan belum sempat dikirimkan melalui alamat akun e-mail Anda',
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
                'D.	Informasi mengenai e-mail lain yang masuk ke e-mail Anda dalam bentuk spam (informasi yang tidak dikenal)',
            isSelected: _index == 4 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 5;
                _nilai = 0;
              });
            },
            jawaban:
                'E.	Informasi tentang e-mail Anda yang telah terkirim ke e-mail orang lain',
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
                    EnterPage(page: const Kuis6()),
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
