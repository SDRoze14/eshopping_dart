import 'package:flutter/material.dart';
import 'package:eshopping/pages/product_details.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_new_price: product_list[index]['new_price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_new_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_new_price});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: new Text('Hero 1'),
      child: InkWell(
        onTap: () { 
          // push value product to product detail
          Navigator.of(context).push(
            new MaterialPageRoute(builder: (context) => new ProductDetails(
              product_detail_name: prod_name,
              product_detail_old_price: prod_old_price,
              product_detail_new_price: prod_new_price,
              product_detail_picture: prod_picture,
            )));

        
            },

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
