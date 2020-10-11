import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text_form.dart';
import 'package:app_estetica/telas/telas_usuarios/tela_cadastro.dart';
import 'package:app_estetica/utils/nav.dart';
import 'package:app_estetica/utils/size_config.dart';
import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
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
                height: 200,
                width: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: CustomTextForm(
                dicaCampo: "Digite seu email",
                nextFocus: _focusSenha,
                acaoTeclado: TextInputAction.next,
                tipoTeclado: TextInputType.emailAddress,
                icone: Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                ),
                backGColor: Colors.blue[100],
                fill: true,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
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
              ),
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
              child: CustomActionButton(
                campoNome: 'Logar',
                function: () {},
              ),
            ),
            Container(
              child: InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  push(context, TelaCadastro());
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
