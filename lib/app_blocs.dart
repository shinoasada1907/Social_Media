import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/app_events.dart';
import 'package:ulearning_app/app_states.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(InitState()) {
    on<IncrementEvent>((event, emit) {
      emit(AppState(counter: state.counter + 1));
      print(state.counter);
    });

    on<DecrementEvent>((event, emit) {
      emit(AppState(counter: state.counter - 1));
    });
  }
}
