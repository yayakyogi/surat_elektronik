import 'package:flutter/material.dart';
import 'package:surat_elektronik/themes.dart';

class LayoutMateri extends StatelessWidget {
  const LayoutMateri({
    Key? key,
    required this.backgroundImage,
    required this.marginTop,
    required this.marginBottom,
    required this.widget,
  }) : super(key: key);

  final String backgroundImage;
  final Widget widget;
  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$backgroundImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(top: marginTop, bottom: marginBottom),
          width: MediaQuery.of(context).size.width,
          child: widget,
        ),
      ),
    );
  }
}
