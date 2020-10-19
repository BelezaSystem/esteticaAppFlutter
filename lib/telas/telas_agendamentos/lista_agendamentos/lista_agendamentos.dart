import 'package:app_estetica/custom_widgets/app_bar_widgets/custom_app_bar/custom_app_bar.dart';
import 'package:app_estetica/custom_widgets/image_widgets/custom_background_image.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ListaAgendamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundImage(
      caminhoDeImagem: "assets/images/barbeando.jpg",
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _body(),
      ),
    );
  }

  _body() {
    return CustomAppBar(
      titulo: "Agendamentos",
      child: _listaAgendamentos(),
    );
  }

  _listaAgendamentos() {
    return Container(
      color: Colors.black87,
      child: Center(
        child: CustomText(
          texto: "Você não tem nenhum agendamento.",
          cor: Colors.white,
          bold: true,
          tamanhoFonte: 20,
        ),
      ),
    );
  }
}
