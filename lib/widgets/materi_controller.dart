import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/utils/transition_page.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';

class MateriController extends StatelessWidget {
  const MateriController({
    Key? key,
    required this.page,
  }) : super(key: key);

  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: const Color.fromARGB(255, 203, 222, 252),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                'assets/images/img_button_back.png',
                width: 100,
                height: 50,
              ),
            ),
          ),
          SizedBox(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, EnterPage(page: page));
              },
              child: Image.asset(
                'assets/images/img_button_next.png',
                width: 100,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
