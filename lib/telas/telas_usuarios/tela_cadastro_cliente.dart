import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text_form.dart';
import 'package:app_estetica/states/estado_cadastro/state_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TelaCadastroCliente extends StatefulWidget {
  @override
  _TelaCadastroClienteState createState() => _TelaCadastroClienteState();
}

class _TelaCadastroClienteState extends State<TelaCadastroCliente> {
  StateCadastro stateCadastro = StateCadastro();

  final _focusEmail = FocusNode();
  final _focusNumero = FocusNode();
  final _focusSenha = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastre-se"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: SingleChildScrollView(
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
                digitado: stateCadastro.setNome,
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
                digitado: stateCadastro.setEmail,
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
                digitado: stateCadastro.setNumero,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
              child: CustomTextForm(
                dicaCampo: "Digite sua senha",
                esconderTexto: true,
                focusNode: _focusSenha,
                icone: Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                ),
                backGColor: Colors.blue[100],
                fill: true,
                digitado: stateCadastro.setSenha,
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
                  campoNome: 'Cadastrar',
                  function: stateCadastro.seCamposValidos
                      ? () {
                          stateCadastro.login();
                        }
                      : null,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
