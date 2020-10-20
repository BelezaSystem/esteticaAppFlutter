import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class TelaEstabelecimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }

  _tabBarView() {
    return TabBarView(
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }

  _tabBar() {
    return TabBar(
      labelStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      indicatorColor: Colors.black,
      labelColor: Colors.black,
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
    );
  }
}
