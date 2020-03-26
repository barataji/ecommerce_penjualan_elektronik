import 'package:flutter/material.dart';
import './detail_produk.dart';

//import terlebih dahulu halaman yang diperlukan
//Top Level/Root
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  //Isi dari Widget
  Widget build(BuildContext context) {
    //Material App
    return MaterialApp(
      title: 'First App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(title: Text("Product Listing")),
        //body untuk content
        //menampilkan list
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //anggota dari list berupa widget children
          children: <Widget>[
            //memanggil class Productbox
            //GestureDetector untuk menangani gesture pengguna
            new GestureDetector(
              //listener berupa klik 1x
              onTap: () {
                //navigator .push untuk berpindah halaman
                Navigator.of(context).push(new MaterialPageRoute(
                  //pemanggilan class DetailProduk beserta pengiriman detail produk
                  builder: (BuildContext context) => DetailProduk(
                    name: "Acer",
                    description: "Ini Laptop Acer Canggih beut mah",
                    price: 1000000,
                    image: "acer.jpg",
                    star: 4,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan class ProductBox
                  name: "Acer",
                  description: "Ini Laptop Acer Canggih beut mah",
                  price: 1000000,
                  image: "acer.jpg",
                  star: 4),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Adventors",
                    description:
                        "Adventors adalah produk keluaran baru yang mampu berasing dengan produk lama",
                    price: 9000000,
                    image: "adventors.jpg",
                    star: 4,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan class ProductBox
                  name: "Adventors",
                  description:
                      "Adventors adalah produk keluaran baru yang mampu bersaing dengan produk lama",
                  price: 9000000,
                  image: "adventors.jpg",
                  star: 4),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "MacBook",
                    description:
                        "Tablet Is the most useful device ever for meeting",
                    price: 1100000,
                    image: "macbook.jpg",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                  //berisi parameter yang diperlukan class ProductBox
                  name: "MacBook",
                  description:
                      "Tablet Is the most useful device ever for meeting",
                  price: 1100000,
                  image: "macbook.jpg",
                  star: 5),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Samsung",
                    description: "Pendrive is useful storage medium",
                    price: 1000000,
                    image: "samsung.jpg",
                    star: 4,
                  ),
                ));
              },
              child: ProductBox(
                //berisi parameter yang diperlukan class ProductBox
                name: "Samsung",
                description: "Pendrive is useful storage medium",
                price: 1000000,
                image: "samsung.jpg",
                star: 4,
              ),
            ),
          ],
        ));
  }
}

//Menggunakan Widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //Menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;

  Widget build(BuildContext context) {
    //Menggunakan Widget Container
    return Container(
        //Padding
        padding: EdgeInsets.all(2),
        // height 120
        // Menggunakan Widget Card
        child: Card(
            //Membuat tampilan secara horizontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //Children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk manampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //Membuat tampilan secara vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini isi tampilan vertikal tersebut
                        children: <Widget>[
                          //menampilkan variabel menggunakan widget text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //Menampilkan Widget Icon dibungkus dengan Row
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(Icons.star,
                                      size: 10, color: Colors.orange),
                                ],
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
