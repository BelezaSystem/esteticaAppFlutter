import 'package:mobx/mobx.dart';
part 'state_cadastro.g.dart';

class StateCadastro = _StateCadastroBase with _$StateCadastro;

abstract class _StateCadastroBase with Store {
  Pattern patern =
      r'^\s*(\d{2}|\d{0})[-. ]?(\d{5}|\d{4})[-. ]?(\d{4})[-. ]?\s*$';

  @observable
  String nome = '';

  @observable
  String email = '';

  @observable
  String senha = '';

  @observable
  String numero = '';

  @observable
  bool loading = false;

  @action
  void setNome(String value) => nome = value;

  @action
  void setEmail(String value) => email = value;

  @action
  void setSenha(String value) => senha = value;

  @action
  void setNumero(String value) => numero = value;

  @action
  Future<void> login() async {
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    loading = false;
  }

  @computed
  bool get seEmailValida => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);

  @computed
  bool get seNumeroValida => RegExp(patern).hasMatch(numero);

  @computed
  bool get seSenhaValida => senha.length >= 6;

  @computed
  bool get seCamposValidos => seEmailValida && seSenhaValida && seNumeroValida;
}
