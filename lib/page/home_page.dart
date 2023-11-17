import 'package:bangun_datar_kelas_b/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b/page/persegipanjang_page.dart';
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
              Expanded(child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PersegiPage(),));
                },
                  child: CustomMenu(imageAsset: "asset/persegi.jpeg", title: "persegi"))),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PersegiPanjangPage(),));
                  },
                  child: CustomMenu(imageAsset: "asset/persegipanjang.jpeg", title: "persegi panjang"))),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "asset/segitiga.png", title: "segitiga")),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LingkaranPage(),));
                  },
                  child: CustomMenu(imageAsset: "asset/lingkaran.png", title: "lingkaran"))),
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
