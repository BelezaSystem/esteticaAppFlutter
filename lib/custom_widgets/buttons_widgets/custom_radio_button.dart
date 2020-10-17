import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final int value;
  final String campoNome;
  final int radioGroup;
  final Function onChanged;

  CustomRadioButton(this.campoNome,
      {this.value, this.radioGroup, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: Colors.black,
          value: value,
          groupValue: radioGroup,
          onChanged: onChanged,
        ),
        Text(
          campoNome,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
