import 'package:mobx/mobx.dart';
part 'state_tela_inicial.g.dart';

class StateTelaIncial = _StateTelaIncialBase with _$StateTelaIncial;

abstract class _StateTelaIncialBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void changedIndex(int value) => selectedIndex = value;
}
