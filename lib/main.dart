import 'package:demo/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(Product());
}

class Product extends StatelessWidget {
  List<String> imaelist = [
    'Assets/jacket.png',
  ];
  List<String> _price = [
    '400',
    '4520',
    '3541',
    '4552',
    '542',
  ];
  List<String> _productname = [
    'Jacket',
    'T-Shart',
    'Cap',
    'White Shart',
    'Black Pant'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('New Arrivals'),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details(_productname[index], _price[index])));
                },
                child: Container(
                  color: Color(0xFFEFEFEF),
                  child: Column(
                    children: [
                      Image.asset(
                        'Assets/jacket.png',
                        width: 100,
                        height: 100,
                      ),
                      const Text(
                        'Fashion Jacket',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
