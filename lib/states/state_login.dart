import 'package:mobx/mobx.dart';
part 'state_login.g.dart';

class StateLogin = _StateLoginBase with _$StateLogin;

abstract class _StateLoginBase with Store {
  @observable
  String email = '';

  @action
  void setEmail(String newEmail) => email = newEmail;

  @observable
  String senha = '';

  @action
  void setSenha(String newSenha) => senha = newSenha;

  @observable
  bool esconderSenha = false;

  @action
  void btnMudarSenha() => esconderSenha = !esconderSenha;

  @computed
  bool get seSenhaValido => senha.length >= 6;

  @computed
  bool get seEmailValido => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get seFormValido => seEmailValido && seSenhaValido;
}
