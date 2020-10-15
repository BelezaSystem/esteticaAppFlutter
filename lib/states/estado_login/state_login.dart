import 'package:mobx/mobx.dart';
part 'state_login.g.dart';

class StateLogin = _StateLoginBase with _$StateLogin;

abstract class _StateLoginBase with Store {
  @observable
  bool loading = false;

  @observable
  bool esconderSenha = false;

  @action
  void btnMudarSenha() => esconderSenha = !esconderSenha;

  @action
  String validarCampos(String text) {
    return text.isEmpty ? "Preencha esse campo!" : null;
  }

  @action
  Future<void> loginCliente() async {
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    loading = false;
  }
}
