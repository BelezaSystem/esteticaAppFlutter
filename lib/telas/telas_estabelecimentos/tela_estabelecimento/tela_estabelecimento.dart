import 'package:app_estetica/telas/telas_estabelecimentos/tela_estabelecimento/telas_sobre_estabelecimento/agendar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'telas_sobre_estabelecimento/geral.dart';

class TelaEstabelecimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Agendar(),
      appBar: AppBar(
        title: Text("Estabelecimento X"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _bodyCarousel(),
          Expanded(
            child: _tabs(),
          ),
        ],
      ),
    );
  }

  _tabs() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _tabBar(),
        body: _tabBarView(),
        backgroundColor: Color.fromRGBO(45, 45, 111, 1),
      ),
    );
  }

  _tabBarView() {
    return TabBarView(
      children: [
        Geral(),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.yellow,
        ),
      ],
    );
  }

  _tabBar() {
    return TabBar(
      labelStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      indicatorColor: Colors.white,
      labelColor: Colors.white,
      tabs: [
        Tab(
          text: 'Geral',
        ),
        Tab(
          text: 'Serviços',
        ),
        Tab(
          text: 'Informações',
        ),
      ],
    );
  }

  _bodyCarousel() {
    return Container(
      child: SizedBox(
        height: 350.0,
        width: double.infinity,
        child: Carousel(
          images: [
            NetworkImage(
                "https://i.pinimg.com/originals/db/c2/d5/dbc2d5399b80e8ec09921733e272cf26.jpg"),
            NetworkImage(
                "https://i.pinimg.com/474x/76/cf/7d/76cf7dba6423fb43d6165ace17abc572.jpg"),
          ],
          indicatorBgPadding: 3.0,
          borderRadius: true,
          dotSpacing: 20.0,
          showIndicator: true,
          autoplay: false,
        ),
      ),
    );
  }
}
