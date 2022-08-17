import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/layout_materi.dart';
import 'package:surat_elektronik/widgets/text_materi.dart';

class Materi2 extends StatelessWidget {
  const Materi2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutMateri(
        backgroundImage: 'img_menu_kelebihan.jpg',
        marginTop: 160,
        marginBottom: 20,
        widget: ListView(
          children: const [
            SizedBox(height: 10),
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
