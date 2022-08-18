import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'skor_event.dart';
part 'skor_state.dart';

class SkorBloc extends Bloc<SkorEvent, SkorState> {
  SkorBloc() : super(const SkorInitial()) {
    on<SkorEvent>((event, emit) {
      emit(SkorLoaded(getSkor: event.skor));
    });
  }
}
