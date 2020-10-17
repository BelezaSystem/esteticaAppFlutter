import 'package:app_estetica/custom_widgets/app_bar_widgets/custom_app_bar/custom_app_bar.dart';
import 'package:app_estetica/custom_widgets/image_widgets/custom_background_image.dart';
import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:app_estetica/telas/tela_estabelecimentos/lista_estabelecimentos/item_estabelecimento.dart';
import 'package:flutter/material.dart';

class ListaEstabelecimentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundImage(
      caminhoDeImagem: "assets/images/manicure.jpg",
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _body(),
      ),
    );
  }

  _body() {
    return CustomAppBar(
      titulo: "Estabelecimentos",
      child: _listaEstabelecimentos(),
    );
  }

  _listaEstabelecimentos() {
    return Container(
      color: Colors.black87,
      child: Center(
        child: CustomText(
          texto: "Não há estabelecimentos em sua cidade.",
          cor: Colors.white,
          bold: true,
          tamanhoFonte: 20,
        ),
      ),
    );
  }
}

/*
  Foto Do estabelecimento,
  nome,
  status,
  endereço
*/
