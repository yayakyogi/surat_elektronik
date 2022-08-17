import 'package:flutter/material.dart';
import 'package:surat_elektronik/pages/materi/materi_3G.dart';
import 'package:surat_elektronik/widgets/layout_materi.dart';
import 'package:surat_elektronik/widgets/materi_controller.dart';
import 'package:surat_elektronik/widgets/template_materi.dart';
import 'package:surat_elektronik/widgets/text_materi.dart';

class Materi3F extends StatelessWidget {
  const Materi3F({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutMateri(
        backgroundImage: 'img_menu_pengelolaan.jpg',
        marginTop: 160,
        marginBottom: 20,
        widget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              const TextMateri(
                materi:
                    'Setelah mengklik next, anda akan langsung dialihkan ke tampilan menu inbox atau kotak masuk pesan.berikut adalah tampilan layer menu inbox.',
              ),
              Image.asset('assets/images/img_6.png'),
              const SizedBox(height: 20),
              const TextMateri(
                materi:
                    'Pada sebelah kiri laman menu inbox,terdapat beberapa menu yang dapat digunakan dalam kegiatan berkirim pesan melalui e-mail,yakni sebagai berikut.',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'A. Compose, merupakan menu yang dipilih untuk membuat e-mail baru yang akan Anda kirimkan ke e-mail orang lain.',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'B.	Starred, berisikan informasi tentang e-mail yang telah Anda tandai di menu inbox agar mudah ditemukan jika sewaktu-waktu Anda mencari e-mail tersebut.',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'C.	Sent Mail, berisikan informasi tentang e-mail Anda yang telah dikirmkan ke e-mail orang lain.',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'D.	Darfts, berisikan informasi tentang e-mail yang telah Anda buat, tetapi masih dalam bentuk rencana (draft) dan belum dikirimkan ke e-mail orang lain.',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'F.	Important, berisikan e-mail masuk yang penting dan mengandung lampiran (attachment)',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'G.	Chats, berisikan daftar pembicaraan yang Anda lakukam dengan sesame pengguna akun Gmail melalui Hangouts Gmail',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'H.	All Mail, berisikan informasi tentang semua e-mail yang pernah masuk,keluar,dan belum sempat dikirimkan melalui alamat akun e-mail Anda. Dapat dikatakan bahwa menu ini berisi gabungan semua e-mail yang ada pada menu inbox,Starred,Sent Mail,Draft,Important,dan Spam.',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'I.	Spam, berisikan informasi mengenai e-mail yang masuk ke e-mail Anda dalam bentuk spam (informasi yang tidak dikenal), yang bisa saja berisi virus,atau worm yang sengaja dikirimkan oleh orang yang tidak Anda kenal secara acak. Spam juga dapat berasal dari e-mail rekan Anda yang sudah anda kenal. Sebaiknya, spam yang berisi e-mail mencurigakan langsung dihapus saja.',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'J.	Trash, berisikan informasi e-mail yang tidak diperlukan lagi,baik e-mail yang telah Anda kirim maupun e-mail yang pernah masuk ke dalam inbox e-mail Anda.',
              ),
              const SizedBox(height: 5),
              const TextMateri(
                materi:
                    'K.	Categories, berisikan informasi terkait kategori e-mail yang masuk ke dalam inbox. E-mail yang masuk tersebut nantinya akan diberi label (lihat Manage Label dan Create New Label) sesuai kategorinya, misalnya e-mail promosi atau e-mail yang berisi update terbaru dari situs internet yang diikuti.',
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomSheet: const MateriController(page: Materi3G()),
    );
  }
}
