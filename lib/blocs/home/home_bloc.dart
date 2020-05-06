import 'package:bloc/bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  void onIncrement() {
    dispatch(IncrementEvent());
  }

  void onDecrement() {
    dispatch(DecrementEvent());
  }

  @override
  HomeState get initialState => HomeState.initial();

  @override
  Stream<HomeState> mapEventToState(
      HomeState currentState, HomeEvent event) async* {
    if (event is IncrementEvent) {
      yield currentState..counter += 1;
    }else if (event is DecrementEvent) {
      yield currentState..counter -= 1;
    }
  }
}
