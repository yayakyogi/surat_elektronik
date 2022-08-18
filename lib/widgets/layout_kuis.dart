import 'package:flutter/material.dart';
import 'package:surat_elektronik/bloc/skor_bloc/skor_bloc.dart';
import 'package:surat_elektronik/utils/modal_button_back.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutKuis extends StatelessWidget {
  const LayoutKuis({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<SkorBloc>().add(const SkorEvent(skor: 0));
        return await ModalButton().onBackPressed(context: context);
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: widget,
        ),
      ),
    );
  }
}
