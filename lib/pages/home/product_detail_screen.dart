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
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(productModel.productImage!))),
            )
          ],
        ),
      ),
    );
  }
}
