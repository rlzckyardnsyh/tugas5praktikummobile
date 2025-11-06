import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String productTitle;
  final String productImage;
  final String productDescription;

  const DetailScreen({
    super.key,
    required this.productTitle,
    required this.productImage,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productTitle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  productImage,
                  width: 280, 
                  height: 220,
                  fit: BoxFit.contain, 
                ),
              ),

              const SizedBox(height: 20),

              Text(
                productTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Text(
                productDescription,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}