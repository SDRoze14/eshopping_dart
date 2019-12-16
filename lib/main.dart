import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:eshopping/product.dart';
import 'dart:math' as math;

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carusel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/slide_home/fashion.jpg'),
          AssetImage('images/slide_home/men.jpg'),
          AssetImage('images/slide_home/shoe.jpg'),
          AssetImage('images/slide_home/sofa.jpg'),
          AssetImage('images/slide_home/veget.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(milliseconds: 4000),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
        // dotBgColor: const Color(0x00000000),
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('eShopping'),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: doSomeThing,
            )
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              // header
              new UserAccountsDrawerHeader(
                accountName: Text('Nanthawat Ratchakom'),
                accountEmail: Text('nratchakomm@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.green,
                ),
              ),

              //body
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Account'),
                  leading: Icon(Icons.person),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Money'),
                  leading: Icon(Icons.attach_money),
                ),
              ),

              Divider(),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Logout'),
                  leading: Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: new ListView(
          children: <Widget>[

            image_carusel,

            MaterialButton(
              child: Text('Scan to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  )),
              onPressed: doSomeThing,
              padding: EdgeInsets.all(20.0),
              color: Colors.green,
              highlightElevation: 2,
            ),

            new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),),

            Container(
              height: 360.0,
              child: Product(),
            )
          ],
        ));
  }

  void doSomeThing() {}
}
