import 'dart:html';

import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage({Key? key}) : super(key: key);
final PersegiController _persegiController= Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Persegi Page",
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "asset/persegi.jpeg",
            height: 150,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'sans-serif',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Persegi adalah persegi panjang yang panjang keempat sisinya sama atau turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: ((value) {
                _persegiController.sisi = int.parse(value);
              }),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  _persegiController.hitungLuas();
                },
                child: Text(
                  'Hitung Luas',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 15.0,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  _persegiController.hitungKeliling();
                },
                child: Text(
                  'Hitung Keliling',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]

          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Obx(
                  () => Text(
                _persegiController.hasil.value,
                style: TextStyle(
                  color: _persegiController.color.value,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
