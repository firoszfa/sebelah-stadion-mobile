
#   Mobile App Sebelah Stadion

Tugas Individu Matkul PBP Fasilkom UI

- Nama :  Firos Aqiela Zufa 
- NPM : 2406412972
- Kelas : PBP F




## Section

- [Tugas Individu 7](#Tugas-Individu-7)

## Tugas Individu 7

1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.

- Widget tree (pohon widget) adalah representasi hierarkis dari semua widget yang menyusun UI pada Flutter. dia bekerja seperti ini seperti pohon silsilah keluarga. Hubungan parent-child (induk-anak) sangat penting karena widget induk (parent) mengontrol konfigurasi, batasan (constraints) ukuran, dan posisi widget anaknya (child). Saat Flutter menggambar UI, ia "berjalan" ke bawah pohon ini, dan saat data berubah, ia "berjalan" ke atas pohon untuk menemukan widget yang perlu diperbarui.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
- widget akar proyek adalah MaterialApp, yang berfungsi membungkus aplikasi, mengatur tema global (menggunakan ThemeData), dan menetapkan MyHomePage sebagai halaman utama. Di dalam MyHomePage, Scaffold digunakan sebagai kerangka halaman dasar, menyediakan AppBar (untuk bilah judul) dan body. Tata letak utama di dalam body diatur oleh Column (untuk menyusun widget secara vertikal) dan Row (untuk menyusun InfoCard secara horizontal), serta Padding untuk memberi jarak. GridView (GridView.count) digunakan untuk menampilkan menu item dalam 3 kolom. Widget kustom InfoCard menggunakan Card dan Container untuk menampilkan data (NPM, nama, kelas). Sementara itu, widget kustom ItemCard menggunakan Material (untuk warna dan bentuk) dan InkWell untuk menangani interaksi ketukan (onTap), yang kemudian memanggil ScaffoldMessenger untuk menampilkan SnackBar. Widget pendukung lainnya seperti Text, Icon, SizedBox, dan Center digunakan untuk melengkapi tampilan dan penataan elemen UI.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
- MaterialApp berfungsi sebagai konfigurator utama aplikasi Flutter yang menggunakan desain Material. Widget ini menyediakan struktur dasar dan environment Material Design, termasuk pengaturan tema global, navigasi, rute, sistem lokalitas, serta integrasi widget bernuansa material seperti Scaffold, AppBar, dan FloatingActionButton. Dengan menempatkan MaterialApp sebagai widget root, seluruh widget di bawahnya dapat memanfaatkan fitur-fitur tersebut secara konsisten. Hal ini memastikan bahwa aplikasi memiliki styling, behavior, dan arsitektur navigasi yang seragam sejak lapisan teratas, sehingga menjadikannya pilihan standar untuk membangun aplikasi Flutter modern berbasis material.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
- StatelessWidget adalah widget yang tidak memiliki state internal dan tidak mengalami perubahan data setelah pertama kali dirender. Widget ini cocok untuk elemen UI statis, seperti teks, ikon, atau komponen visual yang hanya menampilkan informasi tetap. Sebaliknya, StatefulWidget memungkinkan penyimpanan dan perubahan state selama lifecycle widget berjalan. Ia memiliki objek State terpisah yang dapat diperbarui menggunakan setState(), sehingga UI dapat merespons interaksi pengguna, perubahan data runtime, animasi, atau proses asinkron seperti pengambilan data dari API. Pemilihan keduanya bergantung pada kebutuhan: gunakan StatelessWidget untuk tampilan yang tidak berubah, dan StatefulWidget ketika UI bergantung pada perubahan data atau interaksi dinamis.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
- BuildContext adalah objek yang merepresentasikan posisi suatu widget dalam struktur tree aplikasi. Konsep ini penting karena memungkinkan widget mengakses informasi dan dependensi dari ancestor-nya, seperti tema, ukuran layar, atau navigasi. Dalam metode build(), BuildContext digunakan untuk memanggil fungsi dan properti yang bergantung pada lingkungan UI, misalnya Theme.of(context), MediaQuery.of(context), atau Navigator.of(context). Dengan kata lain, BuildContext menjadi kunci bagi widget untuk terhubung dengan hierarchy UI dan mengambil resource atau konfigurasi yang diperlukan agar dapat merender tampilan secara benar sesuai ekosistem aplikasinya.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
- Hot reload adalah mekanisme Flutter yang menyisipkan perubahan kode ke dalam aplikasi yang sedang berjalan tanpa menghilangkan state yang ada. Fitur ini mempercepat proses pengembangan karena developer dapat langsung melihat perubahan UI atau logic sederhana tanpa memulai ulang aplikasi sepenuhnya. Sebaliknya, hot restart akan menghentikan aplikasi dan memulainya kembali dari awal, yang berarti seluruh state akan ter-reset. Walaupun lebih lambat, hot restart diperlukan ketika perubahan kode memengaruhi struktur atau state internal secara mendasar sehingga hot reload tidak mampu mengakomodasinya. Dengan kombinasi kedua fitur ini, proses iterasi pengembangan di Flutter menjadi sangat efisien dan responsif.