import 'package:mobx/mobx.dart';
part 'state_cadastro.g.dart';

class StateCadastro = _StateCadastroBase with _$StateCadastro;

abstract class _StateCadastroBase with Store {
//OBSERVERS
  @observable
  String nome = '';

  @observable
  String sobreNome = '';

  @observable
  String email = '';

  @observable
  String senha = '';

  @observable
  String reSenha = '';

  @observable
  String numero = '';

  @observable
  bool loading = false;

  @observable
  int radioValue = 1;

//ACTIONS
  @action
  void setNome(String value) => nome = value;

  @action
  void setSobreNome(String value) => sobreNome = value;

  @action
  void setEmail(String value) => email = value;

  @action
  void setSenha(String value) => senha = value;

  @action
  void setReSenha(String value) => reSenha = value;

  @action
  void setNumero(String value) => numero = value;

  @action
  void setRadioValue(int value) => radioValue = value;

  @action
  String validarCampoVazio(String value) {
    if (value.isEmpty) {
      return "Preencha esse campo!";
    }
    return null;
  }

  @action
  String validarCampoEmail(String value) {
    if (value.isEmpty) {
      return "Preencha esse campo!";
    }
    if (!seEmailValida) {
      return "E-mail inválido!";
    }
    return null;
  }

  @action
  String validarCampoNumero(String value) {
    if (value.isEmpty) {
      return "Preencha esse campo!";
    }
    if (!seNumeroValida) {
      return "Número inválido";
    }
    return null;
  }

  @action
  String validarCampoSenha(String value) {
    if (value.isEmpty) {
      return "Preencha esse campo!";
    }
    if (!seSenhaValida) {
      return "Exemplo: senha148 (letras e numeros)";
    }
    return null;
  }

  @action
  String validarCampoReSenha(String value) {
    if (value.isEmpty) {
      return "Preencha esse campo!";
    }
    if (!seReSenhaValida) {
      return "As senhas não coicidem";
    }
    return null;
  }

  //Action de fazer a funcçao apos clicar no botao
  @action
  Future<void> cadastrar() async {
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    loading = false;
  }

//COMPUTEDS
  Pattern patern =
      r'^\s*(\d{2}|\d{0})[-. ]?(\d{5}|\d{4})[-. ]?(\d{4})[-. ]?\s*$';
  //Validaçao de senha e email e numero.
  @computed
  bool get seEmailValida => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);

  @computed
  bool get seNumeroValida => RegExp(patern).hasMatch(numero);

  @computed
  bool get seSenhaValida =>
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$').hasMatch(senha);

  @computed
  bool get seNomeValido => nome.isNotEmpty;

  @computed
  bool get seSobreNomeValido => sobreNome.isNotEmpty;

  @computed
  bool get seReSenhaValida => reSenha == senha;

  @computed
  bool get seCamposValidos =>
      seNomeValido &&
      seSobreNomeValido &&
      seEmailValida &&
      seSenhaValida &&
      seNumeroValida &&
      seReSenhaValida;
}
