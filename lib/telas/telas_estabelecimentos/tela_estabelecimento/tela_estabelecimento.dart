import 'package:app_estetica/states/estado_tela_inicial/state_tela_inicial.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'telas_sobre_estabelecimento/agendar.dart';
import 'telas_sobre_estabelecimento/evento.dart';
import 'telas_sobre_estabelecimento/seu_trabalho.dart';

class TelaEstabelecimento extends StatelessWidget {
  final _state = StateTelaInicial();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fulano'),
      ),
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
      SeuTrabalho(),
      Agendar(),
      Evento(),
    ];
  }

  _bottomNavigatorBar() {
    return Observer(
      builder: (_) {
        return BottomNavigationBar(
          elevation: 20,
          backgroundColor: Color.fromRGBO(45, 45, 111, 1),
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
              titulo: "Meus Trabalhos",
              icone: Icon(OMIcons.workOutline),
              iconeAtivo: Icon(
                OMIcons.work,
              ),
            ),
            _bottomNavigatorBarItem(
              titulo: "Agendar",
              icone: Icon(
                OMIcons.bookmarkBorder,
              ),
              iconeAtivo: Icon(
                OMIcons.bookmark,
              ),
            ),
            _bottomNavigatorBarItem(
              titulo: "Eventos",
              icone: Icon(
                OMIcons.errorOutline,
              ),
              iconeAtivo: Icon(
                OMIcons.error,
              ),
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
