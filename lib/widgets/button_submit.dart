import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';

class ButtonSubmit extends StatelessWidget {
  const ButtonSubmit({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: whiteColor),
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 6,
        primary: const Color.fromARGB(255, 13, 48, 85),
      ),
      child: Text(
        title,
        style: fw_500.copyWith(fontSize: 18, color: whiteColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}
