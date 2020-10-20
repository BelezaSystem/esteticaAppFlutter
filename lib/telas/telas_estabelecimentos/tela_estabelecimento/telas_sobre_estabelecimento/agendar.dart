import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Agendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      child: Icon(
        Icons.cut,
        color: Color.fromRGBO(45, 45, 111, 1),
      ),
      elevation: 20,
      onPressed: () => _chamarModal(context),
    );
  }

  _chamarModal(context) {
    showMaterialModalBottomSheet(
      context: context,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(),
        height: 500,
        child: Column(
          children: [
            CustomText(
              texto: 'Agendar',
              tamanhoFonte: 20,
              bold: true,
            ),
          ],
        ),
      ),
    );
  }
}
