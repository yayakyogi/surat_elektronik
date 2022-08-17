import 'package:flutter/material.dart';
import 'package:surat_elektronik/widgets/text_materi.dart';

class Kesimpulan extends StatelessWidget {
  const Kesimpulan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_menu_kesimpulan.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 150, bottom: 90),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: const [
              TextMateri(
                materi:
                    '•	Surat elektronik yang dalam bahasa inggris disebut electronic mail atau e-mail dapat dinamakan sebagai surat yang diterima dan dikirimkan deengan bantuan jaringan internet.',
              ),
              SizedBox(height: 5),
              TextMateri(
                materi:
                    '•	Di lingkungan perkantoran atau perusahaan, berkorespondensi menggunakan surel atau e-mail menjadi salah satu kegiatan yang dianggap dapat membuat pekerjaan menjadi lebih efisien.',
              ),
              SizedBox(height: 5),
              TextMateri(
                materi:
                    '•	Korespondensi melalui e-mail memiliki bebeapa kelebihan, seperti informasi lebih cepat diterima oleh orang yang dituju dan biaya relative lebih murah dibandingkan melalui jasa kurir atau pos',
              ),
              SizedBox(height: 5),
              TextMateri(
                materi:
                    '•	Korespondensi melalui e-mail juga memiliki beberapa kelemahan,seperti hanya bisa diakses oleh orang yang mempunyai fasilitas internet atau dokumen dapat hilang atau rusak jika terkena virus computer.',
              ),
              SizedBox(height: 5),
              TextMateri(
                materi:
                    '•	Mengirim dan mengelola e-mail dapat dilakukan dengan mengakses situs wed (website) penyedia layanan e-mail,seperti Gmail com.',
              ),
              SizedBox(height: 5),
              TextMateri(
                materi:
                    '•	Website Gmail menyediakan beberapa opsi yang dapat diakses sesuai kebutuhan, seperti membuat akun Gmail baru, lupa alamat akun Gmail, atau Sign in jiak sudah memiliki akun Gmail.',
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
