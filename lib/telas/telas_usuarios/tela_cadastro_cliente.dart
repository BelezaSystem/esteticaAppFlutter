import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/buttons_widgets/custom_back_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text_form.dart';
import 'package:app_estetica/states/estado_cadastro/state_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../custom_widgets/text_widgets/custom_text.dart';
import '../../custom_widgets/text_widgets/custom_text_form.dart';

class TelaCadastroCliente extends StatefulWidget {
  @override
  _TelaCadastroClienteState createState() => _TelaCadastroClienteState();
}

class _TelaCadastroClienteState extends State<TelaCadastroCliente> {
  StateCadastro _stateCadastro = StateCadastro();

  final _focusEmail = FocusNode();
  final _focusNumero = FocusNode();
  final _focusSenha = FocusNode();
  final _focusReSenha = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/lavandocabelo.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black38,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                CustomBackButton(),
                Container(
                  margin: EdgeInsets.only(
                    top: 50,
                    left: 20,
                    right: 20,
                  ),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white60,
                  ),
                  child: CustomText(
                    texto: "Cadastre-se já!",
                    cor: Colors.black87,
                    bold: true,
                    tamanhoFonte: 30,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white30,
                  ),
                  margin: EdgeInsets.only(
                    top: 25,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
                        child: CustomTextForm(
                          dicaCampo: "Digite seu nome",
                          acaoTeclado: TextInputAction.next,
                          tipoTeclado: TextInputType.text,
                          nextFocus: _focusEmail,
                          icone: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          backGColor: Colors.blue[100],
                          fill: true,
                          digitado: _stateCadastro.setNome,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
                        child: CustomTextForm(
                          dicaCampo: "Digite seu email",
                          acaoTeclado: TextInputAction.next,
                          tipoTeclado: TextInputType.emailAddress,
                          focusNode: _focusEmail,
                          nextFocus: _focusNumero,
                          icone: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          backGColor: Colors.blue[100],
                          fill: true,
                          digitado: _stateCadastro.setEmail,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
                        child: CustomTextForm(
                          dicaCampo: "Digite seu numero",
                          focusNode: _focusNumero,
                          nextFocus: _focusSenha,
                          acaoTeclado: TextInputAction.next,
                          tipoTeclado: TextInputType.number,
                          icone: Icon(
                            Icons.phone_android_outlined,
                            color: Colors.black,
                          ),
                          backGColor: Colors.blue[100],
                          fill: true,
                          digitado: _stateCadastro.setNumero,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
                        child: CustomTextForm(
                          dicaCampo: "Digite sua senha",
                          esconderTexto: true,
                          focusNode: _focusSenha,
                          nextFocus: _focusReSenha,
                          acaoTeclado: TextInputAction.next,
                          icone: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                          ),
                          backGColor: Colors.blue[100],
                          fill: true,
                          digitado: _stateCadastro.setSenha,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
                        child: CustomTextForm(
                          dicaCampo: "Repita sua senha",
                          esconderTexto: true,
                          focusNode: _focusReSenha,
                          acaoTeclado: TextInputAction.done,
                          icone: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                          ),
                          backGColor: Colors.blue[100],
                          fill: true,
                          digitado: _stateCadastro.setReSenha,
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            bottom: 10,
                          ),
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          width: 500,
                          child: Observer(builder: (_) {
                            return CustomActionButton(
                              desativarColor: Colors.blueGrey[200],
                              campoNome: 'Cadastrar',
                              function: _stateCadastro.seCamposValidos
                                  ? () {
                                      if (!_formKey.currentState.validate()) {
                                        return;
                                      }
                                    }
                                  : null,
                            );
                          })),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
