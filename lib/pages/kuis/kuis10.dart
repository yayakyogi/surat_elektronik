import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surat_elektronik/bloc/skor_bloc/skor_bloc.dart';
import 'package:surat_elektronik/pages/kuis/kuis6.dart';
import 'package:surat_elektronik/pages/kuis/skor.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';
import 'package:surat_elektronik/widgets/button_jawaban.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';
import 'package:surat_elektronik/widgets/layout_kuis.dart';

class Kuis10 extends StatefulWidget {
  const Kuis10({Key? key}) : super(key: key);

  @override
  State<Kuis10> createState() => _Kuis10State();
}

class _Kuis10State extends State<Kuis10> {
  int _index = 0;
  int _nilai = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutKuis(
      widget: ListView(
        children: [
          const SizedBox(height: 80),
          Text(
            'Soal 10',
            style: fw_500.copyWith(fontSize: 32),
          ),
          const SizedBox(height: 20),
          Text(
            'Contoh hal yang memengaruhi cepat atau lambatnya proses attachment file adalah...',
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
                'A.	Jenis software yang digunakan di computer, laptop, atau ponsel pintar',
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
                'B.	Jarak tempat tinggal antara si penerima dan pengirim e-mail ',
            isSelected: _index == 2 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 3;
                _nilai = 10;
              });
            },
            jawaban: 'C.	Besarnya data atau informasi yang akan disertakan',
            isSelected: _index == 3 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 4;
                _nilai = 0;
              });
            },
            jawaban: 'D.	Jenis web browser yang digunakan',
            isSelected: _index == 4 ? true : false,
          ),
          ButtonJawaban(
            onPressed: () {
              setState(() {
                _index = 5;
                _nilai = 0;
              });
            },
            jawaban: 'E.	Waktu pengiriman e-mail',
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
                    EnterPage(page: const Skor()),
                  );
                },
                title: 'Selesai',
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
