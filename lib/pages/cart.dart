import 'package:eshopping/main.dart';
import 'package:flutter/material.dart';

//local import
import 'package:eshopping/componets/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text('Cart')),
      ),
      
// ===================== BODY ===================
      body: new Cart_products(),
// ==============================================

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text('Tatal:'),
                subtitle: new Text('\u0E3F2500'),
              ),
            ),

            Expanded(
              child: new MaterialButton(
                onPressed: (){},
                child: Text('Check out', style: TextStyle(color: Colors.white),),
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
