import 'package:mobx/mobx.dart';
part 'state_login.g.dart';

class StateLogin = _StateLoginBase with _$StateLogin;

abstract class _StateLoginBase with Store {
  //OBSERVERS
  @observable
  String email = '';

  @observable
  String senha = '';

  @observable
  bool esconderSenha = false;

  @observable
  bool loading = false;

//ACTIONS
  @action
  void setEmail(String newEmail) => email = newEmail;

  @action
  void setSenha(String newSenha) => senha = newSenha;

  @action
  void btnMudarSenha() => esconderSenha = !esconderSenha;

//Action de fazer a funcçao apos clicar no botao
  @action
  Future<void> login() async {
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    loading = false;
  }

  //COMPUTEDS
  //computed de validaçao de email.. (Provisorio nesse estado vai ser apenas no estado do cadastro!)
  @computed
  bool get seEmailValido => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);

  //Validaçao provisorio da senha.
  @computed
  bool get seSenhaValido => senha.length >= 6;
  //verficando se email e senha sao validos!
  @computed
  bool get seFormValido => seEmailValido && seSenhaValido;
}
