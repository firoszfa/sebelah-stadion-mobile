import 'package:flutter/material.dart';
import 'package:sebelah_stadion/screens/menu.dart';
import 'package:sebelah_stadion/screens/product_entry_list.dart';
// Impor halaman form yang akan dituju
import 'package:sebelah_stadion/screens/product_form.dart';
import 'package:sebelah_stadion/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Column(
              children: [
                Text(
                  'Sebelah Stadion',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Seluruh peralatan olahraga ada di toko ini",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  // JAWABAN: Menambahkan style pada Text widget
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Add Product'),
            // Bagian redirection ke NewsFormPage
            onTap: () {
              /*
              TODO: Buatlah routing ke NewsFormPage di sini,
              setelah halaman NewsFormPage sudah dibuat.
              */
              // JAWABAN: Navigasi ke NewsFormPage menggunakan Navigator.push
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductFormPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Product List'),
            onTap: () {
              // Route to news list page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductEntryListPage(filterByUser: false),),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.inventory),
            title: const Text('Produk Saya'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // filterByUser: true -> Ambil punya user saja
                  builder: (context) => const ProductEntryListPage(filterByUser: true),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () async {
              // Ambil instance CookieRequest
              final request = context.read<CookieRequest>();

              // TODO: Ganti URL dengan URL logout Django Anda
              final response = await request.logout("http://localhost:8000//auth/logout/");

              // Periksa status dan navigasi ke halaman login
              if (context.mounted) {
                String message = response["message"];
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );

                // Navigasi ke halaman login setelah logout
                Navigator.pushReplacement(
                  context,
                  // Pastikan Anda mengimpor halaman login yang benar
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}