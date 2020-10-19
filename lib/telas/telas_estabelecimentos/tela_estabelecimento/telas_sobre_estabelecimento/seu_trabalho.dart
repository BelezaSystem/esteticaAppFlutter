import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class SeuTrabalho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              showIndicator: false,
              overlayShadow: true,
              overlayShadowColors: Colors.black45,
              overlayShadowSize: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
