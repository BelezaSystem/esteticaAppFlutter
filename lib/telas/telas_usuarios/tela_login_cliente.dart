import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text_form.dart';
import 'package:app_estetica/states/estado_login/state_login.dart';
import 'package:app_estetica/telas/telas_usuarios/tela_cadastro_cliente.dart';
import 'package:app_estetica/utils/nav.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TelaLoginCliente extends StatefulWidget {
  @override
  _TelaLoginClienteState createState() => _TelaLoginClienteState();
}

class _TelaLoginClienteState extends State<TelaLoginCliente> {
  StateLogin stateLogin = StateLogin();

  final _focusSenha = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: [
        Image.asset(
          "assets/images/corte3.jpg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black54,
        ),
        SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
              color: Colors.white38,
            ),
            margin: EdgeInsets.only(
              top: 250,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Observer(builder: (_) {
                    return CustomTextForm(
                      ativarCampo: !stateLogin.loading,
                      dicaCampo: "Digite seu email",
                      nextFocus: _focusSenha,
                      acaoTeclado: TextInputAction.next,
                      tipoTeclado: TextInputType.emailAddress,
                      icone: Icon(
                        Icons.email_outlined,
                        color: Colors.blue[700],
                      ),
                      backGColor: Colors.blue[100],
                      fill: true,
                      digitado: stateLogin.setEmail,
                    );
                  }),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Observer(builder: (_) {
                    return CustomTextForm(
                        ativarCampo: !stateLogin.loading,
                        dicaCampo: "Digite sua senha",
                        esconderTexto: !stateLogin.esconderSenha,
                        focusNode: _focusSenha,
                        icone: Icon(
                          Icons.lock_outline,
                          color: Colors.blue[700],
                        ),
                        backGColor: Colors.blue[100],
                        fill: true,
                        digitado: stateLogin.setSenha,
                        suficone: InkWell(
                          onTap: stateLogin.btnMudarSenha,
                          child: stateLogin.esconderSenha
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Colors.blue[600],
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.blue[500],
                                ),
                        ));
                  }),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 25, 0),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    splashColor: Colors.blue,
                    onTap: () {},
                    child: CustomText(
                      texto: "Esqueceu sua senha?",
                      bold: true,
                      cor: Colors.black,
                      tamanhoFonte: 19,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  width: 500,
                  child: Observer(builder: (_) {
                    return CustomActionButton(
                      campoNome: 'Login',
                      progress: stateLogin.loading,
                      function: stateLogin.seFormValido
                          ? () {
                              stateLogin.login();
                            }
                          : null,
                    );
                  }),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: InkWell(
                    splashColor: Colors.blue,
                    onTap: () {
                      push(
                        context,
                        TelaCadastroCliente(),
                      );
                    },
                    child: CustomText(
                      texto: "Não tem uma conta? Cadastre-se!",
                      bold: true,
                      cor: Colors.black,
                      tamanhoFonte: 20,
                      underline: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
