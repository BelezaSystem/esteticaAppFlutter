import 'package:flutter/material.dart';

class ItemEstabelecimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) {
        return Container(
          height: 170,
          child: Card(
            child: Row(
              children: [
                Image.network(
                    'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png'),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Barbaria mill grall'),
                      Text('Francisco'),
                      Text('Aberto'),
                      Text('localizaçao'),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
