import 'package:flutter/material.dart';
import 'package:flutter_http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget{

  Product product;

  ProductListRowWidget(this.product);



  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {

    return InkWell(
      child: Card(
        child:Column(
          children: <Widget>[
            Container(
              child:Image.network("https://cdn.pixabay.com/photo/2020/06/20/01/24/frog-5319326_960_720.jpg"),
              height: 130.0,
              width: MediaQuery.of(context).size.width/2,
            ),
            Text(product.productName),
            Text(product.unitPrice.toString() +" TL", style: TextStyle(fontSize:18.0,color:Colors.redAccent))
          ],
        )
      ),
    );

  }


}