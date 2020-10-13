import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:app_estetica/telas/telas_usuarios/tela_login_cliente.dart';
import 'package:app_estetica/utils/nav.dart';
import 'package:flutter/material.dart';

class DecisaoUsuario extends StatefulWidget {
  @override
  _DecisaoUsuarioState createState() => _DecisaoUsuarioState();
}

class _DecisaoUsuarioState extends State<DecisaoUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: [
        Container(
          color: Colors.black45,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: CustomText(
                texto: 'Bem Vindo!',
                cor: Colors.white,
                tamanhoFonte: 40,
                bold: true,
              ),
            ),
            CustomText(
              texto: 'Como você deseja utilizar o aplicativo?',
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
              ),
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: CustomActionButton(
                campoNome: 'Cliente',
                color: Colors.black54,
                function: () {
                  push(
                    context,
                    TelaLoginCliente(),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: CustomActionButton(
                campoNome: 'Gerente',
                color: Colors.black54,
                function: () {},
              ),
            ),
          ],
        )
      ],
    );
  }
}
