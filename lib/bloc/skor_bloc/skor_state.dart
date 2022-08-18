part of 'skor_bloc.dart';

@immutable
abstract class SkorState {
  final int skor;

  const SkorState({required this.skor});
}

class SkorInitial extends SkorState {
  const SkorInitial() : super(skor: 0);
}

class SkorLoaded extends SkorState {
  final int getSkor;

  const SkorLoaded({required this.getSkor}) : super(skor: getSkor);
}
