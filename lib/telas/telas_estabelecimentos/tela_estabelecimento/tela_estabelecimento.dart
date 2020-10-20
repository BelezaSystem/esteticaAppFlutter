import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class TelaEstabelecimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('fulando'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            _bodyCarousel(),
            SizedBox(
              height: 10,
            ),
            _tabBar(),
          ],
        ),
      ),
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
          showIndicator: false,
          autoplay: false,
        ),
      ),
    );
  }

  _tabBar() {
    return TabBar(
      labelStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      labelColor: Colors.black,
      tabs: [
        Tab(
          text: 'Agendar',
        ),
        Tab(
          text: 'Evento',
        )
      ],
    );
  }
}
