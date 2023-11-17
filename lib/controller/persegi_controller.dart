import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final color = Colors.red.obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi x $sisi = $hitung";
    color.value = Colors.green;
  }

  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi x $sisi = $hitung";
    color.value = Colors.red;

  }
}