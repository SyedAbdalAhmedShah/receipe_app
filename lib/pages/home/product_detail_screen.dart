import 'package:flutter/material.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';

class ProdcutDetailScreen extends StatelessWidget {
  final ProductModel productModel;
  const ProdcutDetailScreen({required this.productModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Hero(
              tag: "Product-Image",
              transitionOnUserGestures: true,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        offset: const Offset(-2, 3),
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(productModel.productImage!))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
