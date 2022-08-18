import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';

class ButtonJawaban extends StatelessWidget {
  const ButtonJawaban({
    Key? key,
    required this.onPressed,
    required this.jawaban,
    required this.isSelected,
  }) : super(key: key);

  final String jawaban;
  final Function() onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected
              ? greenColor
              : const Color.fromARGB(255, 228, 238, 255),
          border: Border.all(
            color:
                isSelected ? whiteColor : const Color.fromARGB(255, 13, 48, 85),
          ),
        ),
        child: Text(
          jawaban,
          style: fw_400.copyWith(
            fontSize: 16,
            color: isSelected ? whiteColor : Colors.black,
          ),
        ),
      ),
    );
  }
}
