import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:app_estetica/telas/telas_usuarios/tela_login.dart';
import 'package:app_estetica/utils/nav.dart';
import 'package:app_estetica/utils/size_config.dart';
import 'package:flutter/material.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          child: CustomText(
            texto: 'Bem Vindo!',
            cor: Colors.blue[600],
            tamanhoFonte: 40,
            bold: true,
          ),
        ),
        CustomText(
          texto: 'Escolha como você deseja prosseguir usando o aplicativo',
          tamanhoFonte: 15,
          cor: Colors.blue[600],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          width: SizeConfig.blockSizeVertical * 65.0,
          child: CustomActionButton(
            campoNome: 'Usuario',
            function: () {
              push(context, TelaLogin());
            },
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          width: SizeConfig.blockSizeVertical * 65.0,
          child: CustomActionButton(
            campoNome: 'Gerente',
            function: () {},
          ),
        ),
      ],
    );
  }
}
