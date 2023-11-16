import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page with Flutter",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF11024F),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "asset/persegi.jpeg", title: "persegi")),
              Expanded(child: CustomMenu(imageAsset: "asset/p panjang.jpeg", title: "persegi Panjang")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "asset/segitiga.png", title: "segitiga")),
              Expanded(child: CustomMenu(imageAsset: "asset/lingkaran.png", title: "lingkaran")),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.indigo.shade300,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 150, width: 100,),
            Text(title),
          ],
        ));
  }
}
