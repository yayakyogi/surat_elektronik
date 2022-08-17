import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';
import 'package:surat_elektronik/widgets/button_submit.dart';

class MateriController extends StatelessWidget {
  const MateriController({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  final Function() onNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: primaryColor,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 150,
            child: ButtonSubmit(
              onPressed: () => Navigator.pop(context),
              title: 'Back',
              isButtonSmall: true,
            ),
          ),
          SizedBox(
            width: 150,
            child: ButtonSubmit(
              onPressed: onNext,
              title: 'Next',
              isButtonSmall: true,
            ),
          ),
        ],
      ),
    );
  }
}
