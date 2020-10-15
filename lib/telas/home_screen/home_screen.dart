import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigatorBar(),
      body: _body(),
    );
  }

  _body() {
    return IndexedStack(
      children: _listWidgets(),
      index: _selectedIndex,
    );
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
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
    );
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

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
