import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ItemAgendamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        bottom: 5,
        left: 5,
        right: 5,
      ),
      height: 170,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(51, 51, 102, 1),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            CustomText(
              texto: "Barber Shop do João Silva",
              bold: true,
              tamanhoFonte: 23,
              cor: Colors.white,
            ),
            SizedBox(
              height: 8,
            ),
            CustomText(
              texto: "Serviço: Corte de cabelo",
              bold: false,
              tamanhoFonte: 17,
              cor: Colors.white60,
            ),
            SizedBox(
              height: 8,
            ),
            CustomText(
              texto: "Preço: R\$ 20.0",
              bold: false,
              tamanhoFonte: 17,
              cor: Colors.white60,
            ),
            SizedBox(
              height: 8,
            ),
            CustomText(
              texto: "Data: 19/10/20",
              bold: false,
              tamanhoFonte: 17,
              cor: Colors.white60,
            ),
            SizedBox(
              height: 8,
            ),
            CustomText(
              texto: "Horario: 13:30",
              bold: false,
              tamanhoFonte: 17,
              cor: Colors.white60,
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}

/*
  nome,nome do serviço,preço, data, hora,
*/
