import 'package:flutter/material.dart';
import 'package:supercopa/models/product_entry.dart';
import 'package:supercopa/widgets/left_drawer.dart';
import 'package:supercopa/screens/product_detail.dart';
import 'package:supercopa/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:supercopa/screens/productlist_form.dart';   // ⬅️ tambahkan ini

class ProductEntryListPage extends StatefulWidget {
  const ProductEntryListPage({super.key});

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  Future<List<productEntry>> fetchProduct(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');

    List<productEntry> products = [];
    for (var d in response) {
      if (d != null) {
        products.add(productEntry.fromJson(d));
      }
    }
    return products;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),

      appBar: AppBar(
        title: const Text(
          'Product List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF5D753E),
      ),

      drawer: const LeftDrawer(),

      // ⭐⭐⭐ TAMBAHAN PENTING: Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFF4FA3),  // Pink Fanta Supercopa
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () async {
          final refresh = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductFormPage(),
            ),
          );

          // ⭐ Jika form return true → Refresh FutureBuilder
          if (refresh == true) {
            setState(() {});
          }
        },
      ),

      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData) {
            return const Center(
              child: Text(
                'No products available.',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFB1CC8F), // soft green
                ),
              ),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => productEntryCard(
              product: snapshot.data![index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(
                      product: snapshot.data![index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
