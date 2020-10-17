import 'package:mobx/mobx.dart';
part 'state_tela_inicial.g.dart';

class StateTelaInicial = _StateTelaInicialBase with _$StateTelaInicial;

abstract class _StateTelaInicialBase with Store {
  @observable
  int selectedIndex = 0;

  //Actions
  @action
  void onItemTapped(int value) => selectedIndex = value;

  //Computeds

}
