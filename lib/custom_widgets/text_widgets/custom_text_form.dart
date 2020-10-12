import 'package:app_estetica/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatefulWidget {
  final String dicaCampo;
  final Widget icone;

  final Widget suficone;
  final bool fill;

  final Color backGColor;

  final bool desabilitarBorda;

  final TextEditingController controller;
  final TextInputType tipoTeclado;
  final TextInputAction acaoTeclado;

  final FormFieldValidator<String> validator;

  bool esconderTexto;

  final FocusNode focusNode;
  final FocusNode nextFocus;

  final bool mostrarSenha;

  CustomTextForm({
    @required this.dicaCampo,
    this.controller,
    this.mostrarSenha = false,
    this.esconderTexto = false,
    this.validator,
    this.tipoTeclado,
    this.acaoTeclado,
    this.focusNode,
    this.nextFocus,
    this.icone,
    this.backGColor,
    this.fill,
    this.desabilitarBorda,
    this.suficone,
  });

  @override
  _CustomTextFormState createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.esconderTexto,
      validator: widget.validator,
      keyboardType: widget.tipoTeclado,
      textInputAction: widget.acaoTeclado,
      focusNode: widget.focusNode,
      onFieldSubmitted: (String text) {
        if (widget.nextFocus != null) {
          FocusScope.of(context).requestFocus(widget.nextFocus);
        }
      },
      style: TextStyle(),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        fillColor: backGColor,
        filled: fill,
        prefixIcon: icone,
        suffixIcon: suficone,
        hintText: dicaCampo,
        labelStyle: TextStyle(
          fontSize: SizeConfig.safeBlockVertical * 2.8,
          color: Colors.blue,
        ),
        hintStyle: TextStyle(
          fontSize: SizeConfig.safeBlockVertical * 2.3,
          color: Colors.grey[850],
        ),
      ),
    );
  }
}
