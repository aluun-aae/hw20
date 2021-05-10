import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "hw20",
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Product",
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.topLeft,
        child: blockForProduct(),
      ),
    ),
  ));
}

Widget blockForProduct() {
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[350],
      ),
      padding: const EdgeInsets.all(25),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rowsInProduct("название", "", "Костюм тройка", "1234"),
          rowsInProduct("Модель", "Тип", "Robert Rierra", "Костюм"),
          rowsInProduct(
              "Артикул Модели", "Артикул ткани", "2345436", "Vendor Code"),
        buttonAndText("размеры","192/2 * 2")
        ],
      ));
}

Widget rowsInProduct(String a, String b, String c, String d) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(a, style: TextStyle(fontSize: 17)),
          Text(b, style: TextStyle(fontSize: 17))
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            c,style: TextStyle(fontSize: 17),
          ),
          Text(d, style: TextStyle(fontSize: 17))
        ],
      ),
      SizedBox(height: 30),
    ],
  );
}

Widget buttonAndText(String a, String b) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(a,style: TextStyle(fontSize: 17)),
    SizedBox(height: 10,),
    Container(
      padding: EdgeInsets.symmetric(vertical:10,horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(b,style: TextStyle(fontSize: 17)),
    )],
  );
}
