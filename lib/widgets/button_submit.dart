import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';

class ButtonSubmit extends StatelessWidget {
  const ButtonSubmit({
    Key? key,
    required this.onPressed,
    required this.title,
    this.isButtonSmall = false,
    this.isButtonFull = false,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final bool isButtonSmall;
  final bool isButtonFull;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          isButtonSmall
              ? 100
              : isButtonFull
                  ? MediaQuery.of(context).size.width
                  : 200,
          isButtonSmall ? 25 : 50,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: whiteColor),
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 6,
        primary: Colors.lightBlue,
      ),
      child: Text(
        title,
        style: fw_500.copyWith(fontSize: 18, color: whiteColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}
