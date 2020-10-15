import 'package:app_estetica/custom_widgets/buttons_widgets/custom_back_button.dart';
import 'package:app_estetica/states/estado_login/state_login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../custom_widgets/buttons_widgets/custom_action_button.dart';
import '../../custom_widgets/text_widgets/custom_text.dart';
import '../../custom_widgets/text_widgets/custom_text_form.dart';

class TelaLoginGerente extends StatelessWidget {
  StateLogin _stateLogin = StateLogin();

  final _formKey = GlobalKey<FormState>();

  final _focusSenha = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/ferramentas.jpg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black54,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              CustomBackButton(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: Colors.white38,
                ),
                margin: EdgeInsets.only(
                  top: 180,
                  left: 20,
                  right: 20,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: CustomTextForm(
                          dicaCampo: "Digite seu email",
                          nextFocus: _focusSenha,
                          acaoTeclado: TextInputAction.next,
                          tipoTeclado: TextInputType.emailAddress,
                          validator: _stateLogin.validarCampos,
                          icone: Icon(
                            Icons.email_outlined,
                            color: Colors.blue[700],
                          ),
                          backGColor: Colors.blue[100],
                          fill: true,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Observer(
                          builder: (_) {
                            return CustomTextForm(
                              dicaCampo: "Digite sua senha",
                              esconderTexto: !_stateLogin.esconderSenha,
                              focusNode: _focusSenha,
                              validator: _stateLogin.validarCampos,
                              icone: Icon(
                                Icons.lock_outline,
                                color: Colors.blue[700],
                              ),
                              backGColor: Colors.blue[100],
                              fill: true,
                              suficone: InkWell(
                                onTap: _stateLogin.btnMudarSenha,
                                child: _stateLogin.esconderSenha
                                    ? Icon(
                                        Icons.visibility_off,
                                        color: Colors.blue[600],
                                      )
                                    : Icon(
                                        Icons.visibility,
                                        color: Colors.blue[500],
                                      ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 25, 0),
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            print("asdasd");
                          },
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
                        child: CustomActionButton(
                          circular: 25,
                          campoNome: 'Login',
                          function: () {
                            if (!_formKey.currentState.validate()) {
                              return;
                            }
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 15,
                          top: 25,
                        ),
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {},
                          child: CustomText(
                            texto:
                                "Cadastre seu estabelecimento clicando aqui!",
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
          ),
        ),
      ],
    );
  }
}
