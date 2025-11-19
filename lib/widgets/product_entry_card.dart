import 'package:flutter/material.dart';
import 'package:supercopa/models/product_entry.dart';

class productEntryCard extends StatelessWidget {
  final productEntry product;
  final VoidCallback onTap;

  const productEntryCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              color: Color(0xFFCDE6A7), // soft green
              width: 2,
            ),
          ),
          elevation: 5,
          shadowColor: const Color(0xFF6A8F3F), // green olive shadow
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Thumbnail
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail ?? "")}',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 150,
                      color: const Color(0xFFFFA9D6), // pink soft
                      child: const Center(
                        child: Icon(
                          Icons.broken_image,
                          color: Color(0xFF6A8F3F), // green olive
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Product Name
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF191831), // dark indigo
                  ),
                ),

                const SizedBox(height: 6),

                // Category
                Text(
                  'Category: ${product.category}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFFFF4FA3), // pink fanta
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 6),

                // Description preview
                Text(
                  product.description.length > 100
                      ? '${product.description.substring(0, 100)}...'
                      : product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF444444), // dark grey
                  ),
                ),

                const SizedBox(height: 10),

                // FEATURED Badge
                if (product.isFeatured)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFA851), // orange
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'FEATURED',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
