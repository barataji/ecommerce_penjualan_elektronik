import 'package:flutter/material.dart';
import './detail_produk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Produklist"),
        ),
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //Anggota dari list berupa widget children
          children: <Widget>[
            //GestureDetector untuk menangani gesture pengguna
            new GestureDetector(
              //listener  berupa klik 1x
              onTap: () {
                //navigator.push  untuk berpindah halaman
                Navigator.of(context).push(new MaterialPageRoute(
                  //pemanggilan class DetailProduk beserta pengiriman detail produk
                  builder: (BuildContext context) => DetailProduk(
                    name: "Acer",
                    description:
                        "Ukuran	Dimensi: 320 x 210 x 19 mm, Bobot: 1500 gram, Layar	14 inci FullHD (1920 x 1080 piksel),  OS	Windows 10, Prosesor	Intel Core i3-8145U Dual Core @2.1 GHz (4M cache, up to @3.9 GHz),  RAM	4GB RAM DDR4, Storage	512GB M.2 SSD,VGA	Intel UHD Graphics 620, Nvidia GeForce MX250 4GB DDR5",
                    price: 75000000,
                    image: "acer.jpg",
                    star: 3,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan di class ProductBox
                  name: "Acer",
                  description: "Ini laptop Acer Canggih",
                  price: 75000000,
                  image: "acer.jpg",
                  star: 3),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Adventors",
                      description:
                          "Ukuran	Dimensi: 320 x 210 x 19 mm, Bobot: 1500 gram, Layar	14 inci FullHD (1920 x 1080 piksel),  OS	Windows 10, Prosesor	Intel Core i3-8145U Dual Core @2.1 GHz (4M cache, up to @3.9 GHz),  RAM	4GB RAM DDR4, Storage	512GB M.2 SSD,VGA	Intel UHD Graphics 620, Nvidia GeForce MX250 4GB DDR5",
                      price: 8000000,
                      image: "adventors.jpg",
                      star: 4,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Adventors",
                    description: "Pixel the most featureful phone ever",
                    price: 8000000,
                    image: "adventors.jpg",
                    star: 4)),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Asus",
                    description:
                        "Ukuran	Dimensi: 320 x 210 x 19 mm, Bobot: 1500 gram, Layar	14 inci FullHD (1920 x 1080 piksel),  OS	Windows 10, Prosesor	Intel Core i3-8145U Dual Core @2.1 GHz (4M cache, up to @3.9 GHz),  RAM	4GB RAM DDR4, Storage	512GB M.2 SSD,VGA	Intel UHD Graphics 620, Nvidia GeForce MX250 4GB DDR5",
                    price: 9000000,
                    image: "asus.jpg",
                    star: 3,
                  ),
                ));
              },
              child: ProductBox(
                  name: "Asus",
                  description: "Laptop is most productive development tool",
                  price: 9000000,
                  image: "asus.jpg",
                  star: 3),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Macbook",
                    description:
                        "Ukuran	Dimensi: 320 x 210 x 19 mm, Bobot: 1500 gram, Layar	14 inci FullHD (1920 x 1080 piksel),  OS IOS 10, Prosesor	Intel Core i3-8145U Dual Core @2.1 GHz (4M cache, up to @3.9 GHz),  RAM	4GB RAM DDR4, Storage	512GB M.2 SSD,VGA	Intel UHD Graphics 620, Nvidia GeForce MX250 4GB DDR5",
                    price: 15000000,
                    image: "macbook.jpg",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                  name: "Macbook",
                  description:
                      "This Laptop to high user and Good to meeting ever",
                  price: 15000000,
                  image: "macbook.jpg",
                  star: 5),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Samsung",
                    description:
                        "Ukuran	Dimensi: 320 x 210 x 19 mm, Bobot: 1500 gram, Layar	14 inci FullHD (1920 x 1080 piksel),  OS	Windows 10, Prosesor	Intel Core i3-8145U Dual Core @2.1 GHz (4M cache, up to @3.9 GHz),  RAM	4GB RAM DDR4, Storage	512GB M.2 SSD,VGA	Intel UHD Graphics 620, Nvidia GeForce MX250 4GB DDR5",
                    price: 9000000,
                    image: "samsung.jpg",
                    star: 4,
                  ),
                ));
              },
              child: ProductBox(
                name: "Samsung",
                description: "Pendrive is useful storage medium",
                price: 9000000,
                image: "samsung.jpg",
                star: 4,
              ),
            ),
          ],
        ));
  }
}

//menggunakan widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    //menggunakan widget container
    return Container(
        //padding
        padding: EdgeInsets.all(10),
        // height: 120,
        //menggunakan widget card
        child: Card(
            //membuat tampilan secara horisontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk menampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat tampilan secara vertikal
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
                          //menampilkan widget icon  dibungkus dengan row
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
