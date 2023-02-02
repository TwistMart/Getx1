import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0
      .obs; // we are using .obs to make it reactive means whenever we change the value of books it will update the UI
  var pens = 0.obs;
  int book = 120;
  int pen = 20;
  int get sum => books.value + pens.value;

  int get booktotalprice => books.value * book;
  int get pentotalprice => pens.value * pen;
  int get totalprice => booktotalprice + pentotalprice;

  

  int increment() {
    if (books.value >= 10) {
      Get.snackbar("number of books", "number of books cannot be more than 10");
    } else {
      books.value++;
    }
    return books.value;
  }

  int decrement() {
    if (books.value <= 0) {
      Get.snackbar("number of books", "number of books cannot be less than 0");
    } else {
      books.value--;
    }
    return books.value;
  }

  PensIncrement() {
    if (pens.value >= 10) {
      Get.snackbar("number of pens", "number of pens cannot be more than 10");
    } else {
      pens.value++;
    }
  }

  PensDecrement() {
    if (pens.value <= 0) {
      Get.snackbar("number of pens", "number of pens cannot be less than 0");
    } else {
      pens.value--;
    }
  }
}
