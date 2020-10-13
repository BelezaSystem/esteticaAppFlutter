import 'package:app_estetica/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final String campoNome;
  final Function function;

  final bool progress;
  final Color color;
  final Color splashColor;
  final Color textColor;

  final bool textBold;

  final double circular;
  CustomActionButton({
    @required this.campoNome,
    this.function,
    this.color,
    this.progress = false,
    this.circular,
    this.splashColor,
    this.textColor,
    this.textBold = false,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          circular != null ? circular : 20,
        ),
        color: color != null ? color : Colors.blue[300],
      ),
      height: SizeConfig.safeBlockHorizontal * 14.5,
      child: progress
          ? Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            )
          : FlatButton(
              onPressed: function,
              splashColor: splashColor != null ? splashColor : color,
              child: Text(
                campoNome,
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                  color: textColor != null ? textColor : Colors.white,
                  fontWeight: textBold ? FontWeight.bold : null,
                ),
              ),
            ),
    );
  }
}
