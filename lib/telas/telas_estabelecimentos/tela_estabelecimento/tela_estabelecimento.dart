import 'package:app_estetica/states/estado_tela_inicial/state_tela_inicial.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'telas_sobre_estabelecimento/agendar.dart';
import 'telas_sobre_estabelecimento/evento.dart';

class TelaEstabelecimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [_bodyCarousel(), _tabs()],
      ),
    );
  }

  _bodyCarousel() {
    return SingleChildScrollView(
      child: Container(
        child: SizedBox(
          height: 350.0,
          width: double.infinity,
          child: Carousel(
            images: [
              NetworkImage(
                  "https://i1.wp.com/multarte.com.br/wp-content/uploads/2020/07/pngtree-black-and-white-barber-shop-logo-png-image_4359640.jpg?fit=696%2C696&ssl=1"),
              NetworkImage(
                  "https://i1.wp.com/multarte.com.br/wp-content/uploads/2020/07/pngtree-black-and-white-barber-shop-logo-png-image_4359640.jpg?fit=696%2C696&ssl=1"),
            ],
            indicatorBgPadding: 3.0,
            borderRadius: true,
            dotSpacing: 20.0,
            showIndicator: true,
          ),
        ),
      ),
    );
  }

  _tabBar() {
    return TabBar(
        labelStyle: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
        labelColor: Colors.black,
        tabs: [
          Tab(
            text: 'Agendar',
          ),
          Tab(
            text: 'Evento',
          )
        ]);
  }

  _tabs() {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Barber Shop do João Silva'),
        ),
        body: _tabBar(),
      ),
    );
  }
}
