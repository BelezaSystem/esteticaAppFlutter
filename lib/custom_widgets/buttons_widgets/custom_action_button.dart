import 'package:app_estetica/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final String campoNome;
  final Function function;

  final bool progress;
  final Color color;

  CustomActionButton({
    @required this.campoNome,
    this.function,
    this.color,
    this.progress = false,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
              child: Text(
                campoNome,
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
