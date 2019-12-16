import 'package:eshopping/main.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_old_price;
  final product_detail_new_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
            child: Text('eShopping')),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                            '\u0E3F${widget.product_detail_old_price}',
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough)),
                      ),
                      Expanded(
                        child: new Text(
                          '\u0E3F${widget.product_detail_new_price}',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ============== First Button ==============

          Row(
            children: <Widget>[
              // Size Button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Size'),
                            content: new Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Size')),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // Color Button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Color'),
                            content: new Text("Choose the color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Color')),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // Quantity Button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Quantity'),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Qty')),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // =============== Second Button ================
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text('Buy now')),
              ),
              new IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.green,
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.green,
                onPressed: () {},
              ),
            ],
          ),

          Divider(
            color: Colors.green,
          ),
          new ListTile(
            title: new Text('Product details'),
            subtitle: new Text(
                'Suscipit tellus mauris a diam maecenas sed enim. Eget aliquet nibh praesent tristique magna sit amet purus gravida. Pharetra sit amet aliquam id diam maecenas ultricies mi eget. Blandit volutpat maecenas volutpat blandit aliquam etiam erat. Purus semper eget duis at tellus at urna condimentum. Amet massa vitae tortor condimentum. Morbi enim nunc faucibus a pellentesque. Tincidunt tortor aliquam nulla facilisi cras fermentum odio. Ut ornare lectus sit amet. Sit amet massa vitae tortor condimentum lacinia quis vel. Nec feugiat in fermentum posuere urna.'),
          ),

//        -------------- Product Name --------------------
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              ),
            ],
          ),

//        -------------- Product Brand --------------------
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('Brand XXX'),
              ),
            ],
          ),

//        -------------- Product Condition --------------------
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('NEW'),
              ),
            ],
          ),

//        ------------ Similar Product -----------------
          Divider(),
          Padding(padding: EdgeInsets.all(8.0),
          child: new Text('Simalar products'),),
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
     {
      "name": "NIKE",
      "picture": "images/resent_product/nike.jpg",
      "old_price": 2500,
      "new_price": 2000,
    },
    {
      "name": "Shirt",
      "picture": "images/resent_product/shirt.jpg",
      "old_price": 1000,
      "new_price": 850,
    },
    {
      "name": "Jeans",
      "picture": "images/resent_product/jeans.jpg",
      "old_price": 1500,
      "new_price": 1000,
    },
    {
      "name": "Table",
      "picture": "images/resent_product/table.jpg",
      "old_price": 8000,
      "new_price": 6590,
    },
    {
      "name": "Coke",
      "picture": "images/resent_product/coke.jpg",
      "old_price": 60,
      "new_price": 45,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      primary: false,
      shrinkWrap: true,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_new_price: product_list[index]['new_price'],
        );
      },
    );
  }
}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_new_price;

  Similar_Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_new_price});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: prod_name,
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          // push value product to product detail
            new MaterialPageRoute(builder: (context) => new ProductDetails(
              product_detail_name: prod_name,
              product_detail_old_price: prod_old_price,
              product_detail_new_price: prod_new_price,
              product_detail_picture: prod_picture,
            ))),
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(
                prod_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text(
                '\u0E3F$prod_new_price',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                '\u0E3F$prod_old_price',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.lineThrough),
              ),
            ),
          ),
          child: Image.asset(prod_picture, fit: BoxFit.cover),
        ),
      ),
    ));
  }
}