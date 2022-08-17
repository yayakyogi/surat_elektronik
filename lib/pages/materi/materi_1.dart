import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/layout_materi.dart';
import 'package:surat_elektronik/widgets/text_materi.dart';

class Materi1 extends StatelessWidget {
  const Materi1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutMateri(
        backgroundImage: 'img_menu_pengertian.jpg',
        marginTop: 120,
        marginBottom: 110,
        widget: ListView(
          children: const [
            SizedBox(height: 5),
            TextMateri(
              materi:
                  '   Surat elektronik dalam Bahasa inggris disebut electtronic mail atau e-mail dapat dimaknai sebagai surat yang diterima dan dikirimkan dengan batuan jaringan internet. Jaringan internet tersebut dapat ditemukan dalam media elektronik, seperti computer,laptop,ataupun ponsel pintar.',
            ),
            TextMateri(
              materi:
                  '   Di era kemajuan teknologi seperti saat ini,kegiatan korespondensi atau surat-menyurat menggunakan e-mail menjadi pilihan banyak orang. Terdapat beberapa alas an yang melatarbelakanginya. Pertama, Kemajuan teknologi membuat masyarakat dapat mengakses internet secara mudah. Kedua,saling mengirim pesan melalui surat konvensional dianggap lebih rumit dan memakan waktu jika dibandingkan dengan surat elektronik yang ringkasdan tidak memakan waktu lama untuk dikirimkan.',
            ),
            TextMateri(
              materi:
                  '   Di lingkungan perkantoran atau perusahaan berkorespondensi menggunakan surel atau e-mail menjadi salah satu kegiatan yang dianggap dapat membuat pekerjaan menjadi lebih efisien. Dengan mengirimkan dokumen pekerjaan melalui email, pekerjaan menjadi cepat ditindaklanjuti. Selain itu,korespondensi melalui e-mail juga menjadi penghubung yang efektif antar perusahaan.',
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
