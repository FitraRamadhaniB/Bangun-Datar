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
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade300,borderRadius: BorderRadius.all( Radius.circular(10))
            ),
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(15.0),
            child: Text(
                "Persegi adalah persegi panjang yang panjang keempat sisinya sama atau turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
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

                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
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
                    ],
                  ),

                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),

            child: Column(
              children: [
                Text(
                  'Perhitungan :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20,
                  ),
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

                Text(
                    '==============================================='
                ),

                Text(
                  'Thank You',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
