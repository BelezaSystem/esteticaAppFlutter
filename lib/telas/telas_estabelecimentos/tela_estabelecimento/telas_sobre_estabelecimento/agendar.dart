import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Agendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(45, 45, 111, 1),
        child: Icon(OMIcons.add),
        onPressed: () => _chamarModal(context),
      ),
    );
  }

  _chamarModal(context) {
    showMaterialModalBottomSheet(
      context: context,
      builder: (context, scrollController) => Container(
        height: 500,
        child: Column(
          children: [],
        ),
      ),
    );
  }

  _body() {
    Container();
  }
}
