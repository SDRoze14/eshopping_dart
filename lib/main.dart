import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:eshopping/componets/product.dart';
import 'package:eshopping/pages/cart.dart';

import 'dart:math' as math;

final List<String> imageList = [
  'images/slide_home/fashion.jpg',
  'images/slide_home/men.jpg',
  'images/slide_home/shoe.jpg',
  'images/slide_home/sofa.jpg',
  'images/slide_home/veget.jpg'
];

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
final Widget placholder = Container(color: Colors.grey,);

final List child = map<Widget>(
  imageList,
  (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(i, fit: BoxFit.cover, width: 1500.0,),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'No. $index image',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
).toList();
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}
class HomePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}



class _homePageState extends State<HomePage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
   Widget image_carousel = new Column(
     children: [
       CarouselSlider(
         items: child,
         autoPlay: true,
         autoPlayAnimationDuration: Duration(milliseconds: 1000),
         
         enlargeCenterPage: true,
         aspectRatio: 2.0,
         onPageChanged: (index) {
           setState(() {
             _current = index;
           });
         },
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: map<Widget>(
           imageList,
           (index, i) {
             return Container(
               width: 20.0,
               height: 8.0,
               margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 2.0),
               decoration: BoxDecoration(
                 shape: BoxShape.rectangle,
                 color: _current == index
                 ? Colors.green
                 : Color.fromRGBO(0, 0, 0, 0.4),
               ),
             );
           }
         ),
       )
     ],
   );
    // Widget image_carusel = new Container(
    //   height: 200.0,
    //   child: new Carousel(
    //     boxFit: BoxFit.cover,
    //     images: [
    //       AssetImage('images/slide_home/fashion.jpg'),
    //       AssetImage('images/slide_home/men.jpg'),
    //       AssetImage('images/slide_home/shoe.jpg'),
    //       AssetImage('images/slide_home/sofa.jpg'),
    //       AssetImage('images/slide_home/veget.jpg'),
    //     ],
    //     autoplay: false,
    //     animationCurve: Curves.fastOutSlowIn,
    //     autoplayDuration: Duration(milliseconds: 4000),
    //     dotSize: 4.0,
    //     indicatorBgPadding: 6.0,
    //     // dotBgColor: const Color(0x00000000),
    //     dotBgColor: Colors.transparent,
    //   ),
    // );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('eShopping'),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
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
            image_carousel,
            MaterialButton(
              child: Text('Scan to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  )),
              onPressed: (){},
              padding: EdgeInsets.all(20.0),
              color: Colors.green,
              highlightElevation: 2,
            ),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Text('Recent Products'),
            ),
            Container(
              height: 360.0,
              child: Product(),
            )
          ],
        ));
  }

}
