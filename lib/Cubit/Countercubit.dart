// ignore_for_file: file_names

import 'package:basketball_counter_app/Cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<counterstate> {
  CounterCubit() : super(CounterAIncrementState());

  int teamApoints = 0;

  int teamBpoints = 0;

  // ignore: non_constant_identifier_names
  void TeamInctement({required String team, required int buttonnumber}) {
    if (team == 'A') {
      teamApoints += buttonnumber;
      emit(CounterAIncrementState());
    } else {
      teamBpoints += buttonnumber;
      emit(CounterAIncrementState());
    }
  }
}
