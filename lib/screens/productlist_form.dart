import 'package:flutter/material.dart';
import 'package:supercopa/widgets/left_drawer.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'dart:convert';
import 'package:supercopa/screens/menu.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _description = "";
  int _price = 0;
  String _category = "shoes";
  String _thumbnail = "";
  int _stock = 1;
  String _size = "M";
  bool _isFeatured = false;
  bool _isSigned = false;
  bool _isOfficial = false;

  final List<String> _categories = ['shoes', 'jersey', 'ball', 'accessories'];
  final List<String> _sizes = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Product Form'),
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFF35695), Color(0xFFF8BDBD)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      drawer: const LeftDrawer(),

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,   
            children: [
              const SizedBox(height: 12),

              // NAME
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  decoration: inputStyle("Nama Produk"),
                  onChanged: (v) => _name = v,
                  validator: (v) =>
                      v == null || v.isEmpty ? "Nama tidak boleh kosong!" : null,
                ),
              ),

              // DESCRIPTION
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  maxLines: 5,
                  decoration: inputStyle("Deskripsi Produk"),
                  onChanged: (v) => _description = v,
                  validator: (v) =>
                      v == null || v.isEmpty ? "Deskripsi tidak boleh kosong!" : null,
                ),
              ),

              // PRICE
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: inputStyle("Harga Produk"),
                  onChanged: (v) => _price = int.tryParse(v) ?? 0,
                  validator: (v) {
                    if (v == null || v.isEmpty) return "Tidak boleh kosong!";
                    if (int.tryParse(v) == null) return "Harus angka!";
                    if (int.parse(v) <= 0) return "Harga harus > 0!";
                    return null;
                  },
                ),
              ),

              // STOCK
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: inputStyle("Stock Produk"),
                  onChanged: (v) => _stock = int.tryParse(v) ?? 1,
                ),
              ),

              // CATEGORY
              Padding(
                padding: const EdgeInsets.all(8),
                child: DropdownButtonFormField(
                  decoration: inputStyle("Kategori"),
                  value: _category,
                  items: _categories
                      .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                      .toList(),
                  onChanged: (v) => _category = v!,
                ),
              ),

              // SIZE
              Padding(
                padding: const EdgeInsets.all(8),
                child: DropdownButtonFormField(
                  decoration: inputStyle("Size"),
                  value: _size,
                  items: _sizes
                      .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                      .toList(),
                  onChanged: (v) => _size = v!,
                ),
              ),

              // THUMBNAIL
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  decoration: inputStyle("URL Thumbnail"),
                  onChanged: (v) => _thumbnail = v,
                ),
              ),

              // FEATURED
              SwitchListTile(
                title: const Text("Produk Unggulan"),
                value: _isFeatured,
                activeColor: const Color(0xFFF35695),
                onChanged: (v) => setState(() => _isFeatured = v),
              ),

              // SIGNED
              SwitchListTile(
                title: const Text("Signed Product?"),
                value: _isSigned,
                activeColor: const Color(0xFFF35695),
                onChanged: (v) => setState(() => _isSigned = v),
              ),

              // OFFICIAL
              SwitchListTile(
                title: const Text("Official Merch?"),
                value: _isOfficial,
                activeColor: const Color(0xFFF35695),
                onChanged: (v) => setState(() => _isOfficial = v),
              ),

              // SAVE BUTTON
              const SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF98805),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),

                
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final response = await request.postJson(
                      "http://localhost:8000/create-flutter/",
                      jsonEncode({
                        "name": _name,
                        "description": _description,
                        "price": _price,
                        "category": _category,
                        "thumbnail": _thumbnail,
                        "stock": _stock,
                        "size": _size,
                        "is_featured": _isFeatured,
                        "is_signed": _isSigned,
                        "is_official_merch": _isOfficial,
                      }),
                    );

                    if (context.mounted) {
                      if (response['status'] == 'success') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Product successfully saved!")),
                        );
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Something went wrong, please try again."),
                          ),
                        );
                      }
                    }
                  }
                },
                

                child: const Text("Save"),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputStyle(String label) => InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFFF35695)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFF35695), width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
      );
}
