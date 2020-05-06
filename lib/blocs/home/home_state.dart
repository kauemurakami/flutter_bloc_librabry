class HomeState {
  int counter; //contador que terá o estado alterado

  HomeState._(); //construtor

  //estado inicial
  factory HomeState.initial() {
    return HomeState._()..counter = 0;
  }
}
