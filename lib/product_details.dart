import 'package:demo/main.dart';
import 'package:flutter/material.dart';
class Details extends StatelessWidget{
     final product;
     final price;
      Details(this.product,this.price);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.yellow,
       title: Text('Details',style: TextStyle(color: Colors.white),),
     ),
     body:Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Image.asset('Assets/jacket.png',width: 200,height: 200,),
           Text("Product name : $product"),
           Text("Price : $price"),
          Text("Discription : This is very comfortable for mane and womane.Change and return not available right now.|Have diffrent size")
         ],
       ),
     )
   );
  }

}