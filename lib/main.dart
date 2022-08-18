import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surat_elektronik/bloc/skor_bloc/skor_bloc.dart';
import 'package:surat_elektronik/pages/home.dart';
import 'package:surat_elektronik/pages/kuis/skor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SkorBloc(),
      child: MaterialApp(
        title: 'Surat Elektronik',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const Home(),
      ),
    );
  }
}
