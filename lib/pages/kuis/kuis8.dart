import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surat_elektronik/bloc/skor_bloc/skor_bloc.dart';
import 'package:surat_elektronik/pages/kuis/kuis6.dart';
import 'package:surat_elektronik/pages/kuis/kuis9.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';
import 'package:surat_elektronik/widgets/button_jawaban.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';
import 'package:surat_elektronik/widgets/layout_kuis.dart';

class Kuis8 extends StatefulWidget {
  const Kuis8({Key? key}) : super(key: key);

  @override
  State<Kuis8> createState() => _Kuis8State();
}

class _Kuis8State extends State<Kuis8> {
  int _index = 0;
  int _nilai = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutKuis(
      widget: ListView(
        children: [
          const SizedBox(height: 80),
          Text(
            'Soal 8',
            style: fw_500.copyWith(fontSize: 32),
          ),
          const SizedBox(height: 20),
          Text(
            'Fungsi tab menu Insert files using Drive adalah untuk...',
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
                'A.	Mengunduh file berukuran besar yang memerlukan bantuan Google Drive',
            isSelected: _index == 1 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 2;
                _nilai = 10;
              });
            },
            jawaban:
                'B.	Melampirkan file berukuran besar yang memerlukan bantuan Google Drive',
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
                'C.	Mengirimkan file berukuran besar yang memerlukan bantuan Google Drive',
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
                'D.	Memberikan informasi terkait ukuran file yang akan dikirimkan melalui e-mail',
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
                'E.	Memudahkan pengguna akun Gmail untuk mengunggah file berukuran besar je Google Drive',
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
                    EnterPage(page: const Kuis9()),
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
