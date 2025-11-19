import 'package:flutter/material.dart';
import 'package:supercopa/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final productEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text(
          'Product Detail',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF5D753E),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // THUMBNAIL
            if (product.thumbnail != null && product.thumbnail!.isNotEmpty)
              Image.network(
                'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail!)}',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // FEATURED BADGE
                  if (product.isFeatured)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFB1CC8F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'FEATURED',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xFF5D753E),
                        ),
                      ),
                    ),

                  // NAME
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // PRICE
                  Text(
                    "Rp ${product.price}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5D753E),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // CATEGORY • SIZE • STOCK
                  Row(
                    children: [
                      // CATEGORY BADGE
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFB1CC8F),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          product.category.toUpperCase(),
                          style: const TextStyle(
                            color: Color(0xFF5D753E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 12),

                      // SIZE
                      Text("Size: ${product.size}"),

                      const SizedBox(width: 12),

                      // STOCK / LOW STOCK
                      Text(
                        product.isLowStock ? "Low Stock!" : "Stock: ${product.stock}",
                        style: TextStyle(
                          color: product.isLowStock ? Colors.red : Colors.black,
                          fontWeight: product.isLowStock ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // OFFICIAL MERCH
                  if (product.isOfficialMerch)
                    Row(
                      children: const [
                        Icon(Icons.verified, color: Color(0xFF5D753E)),
                        SizedBox(width: 6),
                        Text(
                          "Official Merchandise",
                          style: TextStyle(
                            color: Color(0xFF5D753E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                  const SizedBox(height: 8),

                  // SIGNED JERSEY
                  if (product.isSigned)
                    Row(
                      children: const [
                        Icon(Icons.edit, color: Colors.black),
                        SizedBox(width: 6),
                        Text(
                          "Signed Jersey (Autograph)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                  const Divider(height: 32),

                  // DESCRIPTION
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    product.description,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
