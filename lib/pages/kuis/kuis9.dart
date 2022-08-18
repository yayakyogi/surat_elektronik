import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surat_elektronik/bloc/skor_bloc/skor_bloc.dart';
import 'package:surat_elektronik/pages/kuis/kuis10.dart';
import 'package:surat_elektronik/pages/kuis/kuis6.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';
import 'package:surat_elektronik/widgets/button_jawaban.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';
import 'package:surat_elektronik/widgets/layout_kuis.dart';

class Kuis9 extends StatefulWidget {
  const Kuis9({Key? key}) : super(key: key);

  @override
  State<Kuis9> createState() => _Kuis9State();
}

class _Kuis9State extends State<Kuis9> {
  int _index = 0;
  int _nilai = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutKuis(
      widget: ListView(
        children: [
          const SizedBox(height: 80),
          Text(
            'Soal 9',
            style: fw_500.copyWith(fontSize: 32),
          ),
          const SizedBox(height: 20),
          Text(
            'Pernyataan yang tepat terkait kolom To,Cc,Bbc, dan subject pada kotak New Message adalah...',
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
                'A.	Jika mengisi kolom Bcc, pemilik e-mail yang e-mailnya tertera di kolom To akan tahu kalau si pengirim juga mengirimkan pesan yang sama ke pemilik e-mail di kolom Bcc',
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
                'B.	Jika mengisi kolom Cc, pemilik e-mail yang e-mailnya tertera di kolom To akan tahu kalau si pengirim juga mengirimkan pesan yang sama ke pemilik e-mail di kolom Cc',
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
                'C.	Kolom To dan subject memiliki fungsi yang sama, yakni sama-sama menjadi tempat untuk mengetikkan alamat e-mail yang dikirimkan',
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
                'D.	Kolom To digunakan untuk memberi keterangan terkait gambaran si penerima e-mail yang dikirimkan',
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
                'E.	E-mail yang dikirimkan tidak hanya dapat diketikkan di bagian body, tatapi juga di dalam kolom Subject',
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
                    EnterPage(page: const Kuis10()),
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
