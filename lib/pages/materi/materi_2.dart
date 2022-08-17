import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/text_materi.dart';

class Materi2 extends StatelessWidget {
  const Materi2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: whiteColor,
        ),
        backgroundColor: Colors.blue,
        toolbarHeight: 70,
        title: Text(
          'Kelebihan dan Kekurangan Email',
          style: fw_500.copyWith(
            fontSize: 18,
            color: whiteColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            SizedBox(height: 30),
            TextMateri(
              materi:
                  'Kegiatan surat-menyurat sebagai penunjang kegiatan perkantoran tidak selalu harus dalam bentuk wujud fisik. Melalui kecanggihan perkembangan teknologi informasi (TI), Kegiatan surat menyurat dapat dilakukan melalui perangkat elektronik yaitu computer denan menggunakan fasilitas jaringan internet dan layanan e-mail.',
            ),
            TextMateri(
              materi:
                  'Keuntungan kegiatan surat menyurat melalui email,anatara lain sebagai berikut :',
            ),
            TextMateri(
              materi:
                  'a) Informasi lebih cepat diterima oleh orang yang dituju',
            ),
            TextMateri(
              materi:
                  'b) Biaya relative murah dibandingkan melalui jasa kurir atau pos',
            ),
            TextMateri(
              materi:
                  'c) Tanggapan (feedback) dapat dilaksanakan secara langsung sehingga cepat menerima balasan',
            ),
            TextMateri(
              materi:
                  'd) Dapat mengirimkan gambar dan foto dalam bentuk tiga dimensi sehingga lebih menarik',
            ),
            TextMateri(
              materi:
                  'Dokumen dapat disimpan dalam bentuk softcopy (arsip elektronik)',
            ),
            SizedBox(height: 20),
            TextMateri(
              materi:
                  'Kelemahan dari kegiatan surat menyurat melalui email antara lain sebagai berikut',
            ),
            TextMateri(
              materi:
                  'a) Hanya bisa diakses oleh orang yang mempunyai fasilitas internet',
            ),
            TextMateri(
              materi:
                  'b) Hanya bisa diakses oleh orang yang mengerti tentang internet',
            ),
            TextMateri(
              materi:
                  'c) Dalam keadaan tertentu (jaringan sibuk), proses mengakses email menjadi lamban',
            ),
            TextMateri(
              materi:
                  'Dokumen dapat hilang atau rusak jika terkena virus computer',
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
