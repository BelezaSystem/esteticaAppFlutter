import 'package:mobx/mobx.dart';
part 'state_login.g.dart';

class StateLogin = _StateLoginBase with _$StateLogin;

abstract class _StateLoginBase with Store {
  @observable
  String email = '';

//Setando email e senha para o controle do estado
  @action
  void setEmail(String newEmail) => email = newEmail;

  @observable
  String senha = '';

  @action
  void setSenha(String newSenha) => senha = newSenha;

  @observable
  bool esconderSenha = false;

//Estado para mudar o botao, de esconder a senha e mostrar
  @action
  void btnMudarSenha() => esconderSenha = !esconderSenha;

//Validando email e senha
  @computed
  bool get seEmailValido => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get seSenhaValido => senha.length >= 6;

  @computed
  bool get seFormValido => seEmailValido && seSenhaValido;

//action de esconder os textForm quando estiver em loading..
  @observable
  bool loading = false;

  @action
  Future<void> login() async {
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    loading = false;
  }
}
