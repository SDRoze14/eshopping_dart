import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_the_cart = [
    {
      "name": "NIKE",
      "picture": "images/resent_product/nike.jpg",
      "price": 2000,
      "size": "62",
      "color": "Black",
      "quantity": 1
    },
    {
      "name": "Shirt",
      "picture": "images/resent_product/shirt.jpg",
      "price": 850,
      "size": "M",
      "color": "Blue",
      "quantity": 1
    },
    {
      "name": "Jeans",
      "picture": "images/resent_product/jeans.jpg",
      "price": 1000,
      "size": "M",
      "color": "Blue",
      "quantity": 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: product_on_the_cart[index]['name'],
          cart_prod_picture: product_on_the_cart[index]['picture'],
          cart_prod_price: product_on_the_cart[index]['price'],
          cart_prod_size: product_on_the_cart[index]['size'],
          cart_prod_color: product_on_the_cart[index]['color'],
          cart_prod_qty: product_on_the_cart[index]['quantity'],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_color,
      this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_qty,
      this.cart_prod_size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // =================== LEADING =====================
        leading: new Image.asset(cart_prod_picture),

        //  ================= TITLE ========================
        title: new Text(cart_prod_name),

        // ================= SUBTITLE ======================
        subtitle: new Column(
          children: <Widget>[
            // ====================== Row inside the colum ========================
            new Row(
              children: <Widget>[
                // ======================== Size =========================
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                // ===================== Color ====================
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            // ======================= Price ==============================
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                '\u0E3F${cart_prod_price}',
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(
              icon: Icon(Icons.arrow_drop_up),
              onPressed: () {},
            ),
            new Text('$cart_prod_qty'),
            new IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
