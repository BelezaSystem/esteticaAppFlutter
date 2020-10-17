import 'package:app_estetica/states/estado_tela_inicial/state_tela_inicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  final _stateTelaInicial = StateTelaIncial();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigatorBar(),
      body: _body(),
    );
  }

  _body() {
    return Observer(builder: (_) {
      return IndexedStack(
        children: _listWidgets(),
        index: _stateTelaInicial.selectedIndex,
      );
    });
  }

  _listWidgets() {
    return <Widget>[
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
    ];
  }

  _bottomNavigatorBar() {
    return Observer(builder: (_) {
      return BottomNavigationBar(
        unselectedLabelStyle: TextStyle(),
        items: [
          _bottomNavigatorBarItem(
            titulo: "Estatísticas",
          ),
          _bottomNavigatorBarItem(
            titulo: "Partidas",
          ),
          _bottomNavigatorBarItem(
            titulo: "Notícias",
          ),
          _bottomNavigatorBarItem(
            titulo: "Classificação",
          ),
          _bottomNavigatorBarItem(
            titulo: "Ao vivo",
          ),
        ],
        currentIndex: _stateTelaInicial.selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _stateTelaInicial.changedIndex,
      );
    });
  }

  _bottomNavigatorBarItem({
    @required String titulo,
  }) {
    return BottomNavigationBarItem(
      activeIcon: Container(
        height: 50,
        child: Icon(Icons.add),
      ),
      icon: Container(
        height: 50,
        child: Icon(Icons.add),
      ),
      label: titulo,
    );
  }
}
