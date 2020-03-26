import 'package:flutter/material.dart';

//Top Level/root
void main() => runApp(MyApp());

//widget StatelessWidget digunakan untuk memanggil aplikasi sederhana
class MyApp extends StatelessWidget {
  @override
  //isi dari widget
  Widget build(BuildContext context) {
    //material app
    return MaterialApp(
      title: 'First App',
      //Home Page
      home: MyHomePage(),
    );
  }
}

//bagian edit
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //seluruh body dibungkus coloum
      body: new Column(
        children: <Widget>[
          Image.asset("assets/appimages/buyan.jpg"),
          //setiap bagian pada body dipisahkan container
          Container(
            color: Colors.blueAccent[100],
            padding: const EdgeInsets.all(10),
            //UNTUK MEMBUAT TAMPILAN SECARA HORISONTAL MAKA DIGUNAKAN ROW
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Buyan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Buleleng, Bali - Indonesia',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                Text('41'),
              ],
            ),
          ),
          //setiap bagian pada body dipisahkan container
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
              //untuk membuat tampilan secara horisontal makan digunakan row
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //UNTUK MEMBUAT TAMPILAN SECARA VERTIKAL MAKA DIGUNAKAN COLUMN
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "CALL",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.near_me, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "ROUTE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.share, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Buyan Lake is a smallest lake in Bali located just a next door of Tamblingan Lake'
              'Hence, this lake is also called by Bali Twin Lake.'
              'This lake is located in the plateau area with cool weather cover it.'
              'Furthermore, Buyan Lake is situated in the high land with hill and rain forest surrounds it.'
              'Since the location in the plateau area, the fog is usually blanketing the area.'
              'Buyan Lake own the broadness about 3,9 Km, with the maximum of deepness of Buyan lake is 87 meters and the water volume is 0,116 km3.',
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
