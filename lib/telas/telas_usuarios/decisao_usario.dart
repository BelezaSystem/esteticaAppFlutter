import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:app_estetica/telas/telas_usuarios/tela_login_cliente.dart';
import 'package:app_estetica/utils/nav.dart';
import 'package:app_estetica/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../utils/nav.dart';
import 'tela_login_cliente.dart';

class DecisaoUsuario extends StatefulWidget {
  @override
  _DecisaoUsuarioState createState() => _DecisaoUsuarioState();
}

class _DecisaoUsuarioState extends State<DecisaoUsuario> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: [
        Image.asset(
          "assets/images/corte.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.black45,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: CustomText(
                texto: 'Bem Vindo!',
                cor: Colors.white,
                tamanhoFonte: 40,
                bold: true,
              ),
            ),
            CustomText(
              texto: 'Como você deseja utilizar o aplicativo?',
              tamanhoFonte: SizeConfig.safeBlockHorizontal * 4,
              cor: Colors.white,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  _botaoDeDecisao(
                    nomeDoBotao: "Cliente",
                    funcaoDoBotao: () {
                      push(context, TelaLoginCliente());
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _botaoDeDecisao(
                    nomeDoBotao: "Gerente",
                    funcaoDoBotao: () {},
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  _botaoDeDecisao({String nomeDoBotao, Function funcaoDoBotao}) {
    return Container(
      width: SizeConfig.blockSizeVertical * 65.0,
      child: CustomActionButton(
        campoNome: nomeDoBotao,
        color: Colors.black54,
        splashColor: Colors.grey[300],
        textColor: Colors.white,
        textBold: true,
        circular: 10,
        function: () {
          funcaoDoBotao();
        },
      ),
    );
  }
}
