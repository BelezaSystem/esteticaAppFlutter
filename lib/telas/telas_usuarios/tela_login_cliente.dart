import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text_form.dart';
import 'package:app_estetica/states/state_login.dart';
import 'package:app_estetica/telas/telas_usuarios/tela_cadastro_cliente.dart';
import 'package:app_estetica/utils/nav.dart';
import 'package:app_estetica/utils/size_config.dart';
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
    SizeConfig().init(context);
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.safeBlockVertical * 7,
                bottom: SizeConfig.safeBlockVertical * 5,
              ),
              child: Image.asset(
                "assets/images/barber.png",
                width: SizeConfig.safeBlockHorizontal * 50,
              ),
            ),
            Container(
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
              height: SizeConfig.safeBlockVertical * 1,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              alignment: Alignment.centerRight,
              child: InkWell(
                splashColor: Colors.blue,
                onTap: () {},
                child: CustomText(
                  texto: "Esqueceu sua senha?",
                  bold: true,
                  cor: Colors.blue[600],
                  tamanhoFonte: 15,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: SizeConfig.safeBlockVertical * 2,
              ),
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: SizeConfig.safeBlockVertical * 65.0,
              child: Observer(builder: (_) {
                return CustomActionButton(
                  campoNome: 'Logar',
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
              child: InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  push(
                    context,
                    TelaCadastroCliente(),
                  );
                },
                child: CustomText(
                  texto: "Ainda não tem uma conta? Cadastre-se!",
                  bold: true,
                  cor: Colors.blue[600],
                  tamanhoFonte: 15,
                  underline: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
