import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) => MaterialApp(
    home: HomePage()
  );
}


class HomePage extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
    appBar: AppBar(title: Text("Pusat Harga Barang Pajak Theresia-Samosir")),
    drawer: MediaQuery.of(context).size.width < 500 ? Drawer(
      child: Menu(),
    ) : null,
    body: SafeArea(
        child:Center(
          child: MediaQuery.of(context).size.width < 500 ? Content() :
          Row(
            children: [
              Container(
                width: 200.0,
                child: Menu()
              ),
              Container(
                width: MediaQuery.of(context).size.width-200.0,
                child: Content()
              )
            ]
          )
        )
    )
  );
}

class Menu extends StatelessWidget {
  @override
  Widget build(context) => ListView(
    children: [
      FlatButton(
        onPressed: () {},
          child: ListTile(
          leading: Icon(Icons.looks_one),
          title: Text("Daftar Harga Barang"),
        )
      ),
      FlatButton(
        onPressed: () {},
          child: ListTile(
          leading: Icon(Icons.looks_one),
          title: Text("No.Hp Agen"),
        )
        ),
      FlatButton(
        onPressed: () {},
          child: ListTile(
          leading: Icon(Icons.looks_one),
          title: Text("No.Hp Langganan"),
        )
        ),
      FlatButton(
        onPressed: () {},
          child: ListTile(
          leading: Icon(Icons.looks_one),
          title: Text("No.Hp Keamanan"),
        )
        ),
            FlatButton(
        onPressed: () {},
          child: ListTile(
          leading: Icon(Icons.looks_one),
          title: Text("Daftar Setoran"),
        )
        ),
           FlatButton(
        onPressed: () {},
          child: ListTile(
          leading: Icon(Icons.looks_one),
          title: Text("Catatan"),
        )
      )
    ]
  );
}

class Content extends StatelessWidget {
  final List<String> elements = ["1.Cabai Merah", "2.Cabai Hijau", "3.Cabai Rawit", "4.Bawang Merah", "5.Bawang Putih", "6.Bawang Bombay", "7.Sawi", "8.Kubis", "9.wortel", "10.Selada", "11.Tomat", "12.Jahe", "13.Terong", "14.Buncis", "15.Kentang", "Tampilkan Lebih Banyak"];
  @override
  Widget build(context) => GridView.builder(
    itemCount: elements.length,
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 130.0,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
    ),
    itemBuilder: (context, i) => Card(
      child: Center(
        child: Padding(
        padding: EdgeInsets.all(8.0), child: Text(elements[i])
        )
      )
    )
  );
}
