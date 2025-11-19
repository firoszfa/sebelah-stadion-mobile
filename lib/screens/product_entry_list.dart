import 'package:flutter/material.dart';
// Pastikan path import sesuai dengan struktur project kamu
import 'package:sebelah_stadion/models/product_entry.dart';
import 'package:sebelah_stadion/widgets/left_drawer.dart';
import 'package:sebelah_stadion/widgets/product_entry_card.dart'; // Import widget card baru
import 'package:sebelah_stadion/screens/product_detail.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductEntryListPage extends StatefulWidget {
  // Variabel ini yang menentukan mode halaman
  final bool filterByUser;

  const ProductEntryListPage({
    super.key,
    required this.filterByUser
  });

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {

  Future<List<ProductEntry>> fetchProducts(CookieRequest request) async {
    // Menggunakan widget.filterByUser untuk akses variabel di class induk
    String urlEndpoint = widget.filterByUser
        ? 'http://localhost:8000/json-by-user/' // Endpoint User
        : 'http://localhost:8000/json/';        // Endpoint Semua

    // Ganti localhost dengan 10.0.2.2 jika pakai Emulator Android

    final response = await request.get(urlEndpoint);

    var data = response;
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Column(
                children: [
                  Text(
                    'There are no products in the store yet.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ProductEntryCard(
                  product: snapshot.data![index],
                  onTap: () {
                    // Navigate to news detail page
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
            }
          }
        },
      ),
    );
  }
}