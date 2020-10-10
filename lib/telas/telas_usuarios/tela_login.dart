import 'package:app_estetica/custom_widgets/buttons_widgets/custom_action_button.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text_form.dart';
import 'package:app_estetica/utils/size_config.dart';
import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
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
                icone: Icon(
                  Icons.person_outline,
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
                icone: Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                ),
                backGColor: Colors.blue[100],
                fill: true,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: SizeConfig.blockSizeVertical * 65.0,
              child: CustomActionButton(
                campoNome: 'Loga',
                function: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
