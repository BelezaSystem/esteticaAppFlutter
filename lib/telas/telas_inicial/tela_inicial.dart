import 'package:app_estetica/states/estado_tela_inicial/state_tela_inicial.dart';
import 'package:app_estetica/telas/tela_favoritos/lista_favoritos/lista_favoritos.dart';
import 'package:app_estetica/telas/telas_agendamentos/lista_agendamentos/lista_agendamentos.dart';
import 'package:app_estetica/telas/telas_estabelecimentos/lista_estabelecimentos/lista_estabelecimentos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TelaInicial extends StatelessWidget {
  final _state = StateTelaInicial();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigatorBar(),
      body: _body(),
    );
  }

  _body() {
    return Observer(
      builder: (_) {
        return IndexedStack(
          children: _listWidgets(),
          index: _state.selectedIndex,
        );
      },
    );
  }

  _listWidgets() {
    return <Widget>[
      ListaEstabelecimentos(),
      ListaAgendamentos(),
      ListaFavoritos(),
    ];
  }

  _bottomNavigatorBar() {
    return Observer(
      builder: (_) {
        return BottomNavigationBar(
          elevation: 20,
          backgroundColor: Colors.purple[900],
          unselectedLabelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          items: [
            _bottomNavigatorBarItem(
              titulo: "Estabelecimentos",
              icone: Icon(Icons.room),
            ),
            _bottomNavigatorBarItem(
              titulo: "Agendamentos",
              icone: Icon(Icons.cut_sharp),
            ),
            _bottomNavigatorBarItem(
              titulo: "Favoritos",
              icone: Icon(
                Icons.favorite_border,
              ),
              iconeAtivo: Icon(Icons.favorite),
            ),
          ],
          currentIndex: _state.selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _state.onItemTapped,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
        );
      },
    );
  }

  _bottomNavigatorBarItem({
    @required String titulo,
    @required Icon icone,
    Icon iconeAtivo,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        height: 35,
        child: icone,
      ),
      activeIcon: Container(
        height: 35,
        child: iconeAtivo != null ? iconeAtivo : icone,
      ),
      label: titulo,
    );
  }
}
