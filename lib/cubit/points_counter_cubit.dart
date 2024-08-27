import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'points_counter_state.dart';

class PointsCounterCubit extends Cubit<PointsCounterState> {
  PointsCounterCubit() : super(PointsCounterInitial());
int teamA = 0;
int teamB = 0;
void increment(String team, int score) {
  if(team == 'A') {
    teamA += score;
  } else if(team == 'B') {
    teamB += score;
  }
  print("teamA: $teamA, teamB: $teamB");
emit(PointsCounterInitial());
}
  }

