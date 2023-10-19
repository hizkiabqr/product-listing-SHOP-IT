import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(
        title: 'product layout demo home page',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOP IT"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "baju",
            description: "siapa mau baju? check out ya ! ",
            price: 120000,
            image: "baju.png",
          ),
          ProductBox(
            name: "celana",
            description: "siapa mau celana? check out ya ! ",
            price: 100000,
            image: "celana.png",
          ),
          ProductBox(
            name: "hanphone",
            description: "siapa mau handphone? check out ya ! ",
            price: 5000000,
            image: "handphone.png",
          ),
          ProductBox(
            name: "laptop",
            description: "siapa mau laptop? check out ya ! ",
            price: 16000000,
            image: "laptop.png",
          ),
          ProductBox(
            name: "skincare",
            description: "siapa mau skincare? check out ya ! ",
            price: 200000,
            image: "skincare.png",
          ),
          ProductBox(
            name: "make up",
            description: "siapa mau make up? check out ya ! ",
            price: 150000,
            image: "makeup.png",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("image/" + image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
