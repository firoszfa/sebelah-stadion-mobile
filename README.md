
#   Mobile App Sebelah Stadion

Tugas Individu Matkul PBP Fasilkom UI

- Nama :  Firos Aqiela Zufa 
- NPM : 2406412972
- Kelas : PBP F




## Section

- [Tugas Individu 7](#Tugas-Individu-7)
- [Tugas Individu 8](#Tugas-Individu-8)
- [Tugas Individu 9](#Tugas-Individu-9)
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
## Tugas Individu 8

1. Perbedaan Navigator.push() dan NavigatorpushReplacement()
- Navigator.push() menambahkan halaman baru tanpa menghapus yang lama, sehingga pengguna bisa kembali dengan tombol back. Sedangkan Navigator.pushReplacement() mengganti halaman saat ini, membuat halaman sebelumnya tidak bisa diakses lagi. Di Football Shop, push() cocok untuk menuju halaman detail produk, sedangkan pushReplacement() untuk navigasi setelah login atau checkout.
2. Pemanfaatan Scaffold, AppBar, dan Drawer
- Scaffold menjadi kerangka utama halaman, AppBar menampilkan judul atau logo toko, dan Drawer menyediakan menu navigasi. Dengan kombinasi ini, Football Shop memiliki tampilan yang rapi, konsisten, dan mudah digunakan di setiap halaman.
3. Kelebihan Padding, SingleChildScrollView, dan ListView
- Padding memberi jarak agar tampilan lebih nyaman, SingleChildScrollView membuat konten panjang bisa digulir, dan ListView memudahkan menampilkan daftar elemen. Misalnya, form checkout di Football Shop bisa digulir dengan SingleChildScrollView agar tetap mudah diakses di layar kecil.
4. Penyesuaian warna tema aplikasi
- Warna tema disesuaikan lewat ThemeData di MaterialApp agar selaras dengan identitas Football Shop. Misalnya, memakai kombinasi hijau tua dan putih pada tombol, ikon, dan AppBar untuk menciptakan kesan profesional dan konsisten.
## Tugas Individu 9

### STEP BY STEP

1. Integrasi Autentikasi Django dan Flutter
Fjango:
- Buat app authentication. Tambahkan ke INSTALLED_APPS di settings.py.
- pip install django-cors-headers. Tambahkan 'corsheaders' ke INSTALLED_APPS dan MIDDLEWARE.
- Set CORS_ALLOW_ALL_ORIGINS = True dan konfigurasi cookies (CSRF_COOKIE_SECURE = True, dll.). Tambahkan "10.0.2.2" ke ALLOWED_HOSTS.
- Buat view di authentication/views.py.
- Buat urls.py di authentication/ untuk login/ dan register/. Include authentication.urls di urls.py utama project. 
Flutter:
- Jalankan flutter pub add provider pbp_django_auth.
- Modifikasi main.dart. Ubah MaterialApp dengan Provider untuk membagikan instance CookieRequest.
- Buat halaman login dan register
- Import register.dart di login.dart. Perbarui GestureDetector pada halaman Login untuk menavigasi ke RegisterPage.
- Ganti [YOUR_APP_URL] dengan 10.0.2.2:8000 (Emulator) atau localhost:8000 (Chrome).

2. Pembuatan Model Kustom (Quicktype)
- Buka endpoint JSON Django dan salin seluruh data JSON yang ditampilkan.
- Kunjungi situs web [Quicktype].
- Ubah Name menjadi Product, pastikan Source Type adalah JSONdan pastikan Language adalah Dart.
- Tempel data JSON yang sudah disalin ke dalam textbox Quicktype.
- Klik pilihan Copy Code pada Quicktype untuk menyalin model Dart yang dihasilkan.
- Di proyek Flutter, buat folder lib/models/.
- Buat file lib/models/product_entry.dart dan tempel kode model Dart yang sudah kamu salin.

3. Penerapan fetch data
- Jalankan `flutter pub add http` di terminal proyek Flutter.
- Tambahkan `<uses-permission android:name="android.permission.INTERNET" />` di file `android/app/src/main/AndroidManifest.xml (di luar tag <application>)`.
- Di main/views.py, tambahkan fungsi proxy_image untuk mengambil gambar dari URL eksternal dan mengembalikannya. Di main/urls.py, tambahkan path path('proxy-image/

- Buat lib/widgets/_entry_card.dart. 
- Dalam EntryCard, atur Image.network untuk menggunakan endpoint proxy Django dan mengkodekan URL thumbnail: `http://[YOUR_APP_URL]/proxy-image/?url=${Uri.encodeComponent(.thumbnail)}`.
- Buat lib/screens/product_entry_list.dart (StatefulWidget).
- Di _ProductEntryListPageState, buat Future<List<ProductEntry>> fetchProduct(CookieRequest request) untuk memanggil endpoint JSON Django (.../json/) menggunakan request.get() dan mem-parsing hasilnya ke objek ProductEntry.
- Gunakan FutureBuilder di body ProductEntryListPage untuk menampilkan CircularProgressIndicator saat memuat, atau ListView.builder yang menampilkan ProductEntryCard.
- Navigasi	Tambahkan ListTile Product List di widgets/left_drawer.dart untuk menavigasi ke ProductEntryListPage.
- Tombol Utama	Perbarui handler onTap di widgets/product_card.dart agar tombol "See Football Product" mengarah ke ProductEntryListPage.

- Buat lib/screens/product_detail.dart (StatelessWidget) yang menerima objek ProductEntry.
- Isi ProductDetailPage dengan UI untuk menampilkan detail lengkap Product 
- Di lib/screens/product_entry_list.dart, ubah fungsi onTap pada ProductEntryCard di dalam ListView.builder untuk menavigasi ke ProductDetailPage dan meneruskan objek berita (product: snapshot.data![index]).

4. Integrasi Form Django dan Flutter
Django:
- Di main/views.py, tambahkan import: from django.views.decorators.csrf import csrf_exempt, import json, from django.http import JsonResponse, dan from django.utils.html import strip_tags.
- Buat fungsi create_news_flutter dengan dekorator @csrf_exempt. 
- Konfigurasi URL	Di main/urls.py, tambahkan path baru: path('create-flutter/', create_news_flutter, name='create_news_flutter').

Flutter:
- Di file product_form.dart, tambahkan import untuk `dart:convert`, `provider/provider.dart`, dan `pbp_django_auth/pbp_django_auth.dart`.
- Di dalam method build(BuildContext context), tambahkan baris untuk mendapatkan instance CookieRequest: `final request = context.watch<CookieRequest>();`.
- Ubah fungsi onPressed pada tombol "Tambah" menjadi:
- Tampilkan SnackBar untuk "success" atau "error" dan lakukan Navigator.pushReplacement ke halaman utama (MyHomePage) setelah sukses.

### Question and Answer

1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
- Membuat model Dart dari data JSON sangat penting untuk mencapai validasi tipe dan keamanan null, yang tidak dapat diberikan oleh tipe generik Map<String, dynamic>. Tanpa model, setiap akses ke data memerlukan casting manual, meningkatkan risiko runtime errors jika struktur JSON berubah.

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
- Package http berfungsi sebagai alat komunikasi jaringan dasar di Flutter, bertanggung jawab untuk mengirim dan menerima HTTP requests mentah (GET/POST). Sementara itu, CookieRequest adalah wrapper khusus yang dibangun di atas http. Peran CookieRequest adalah mengelola autentikasi berbasis cookie dengan Django; ia secara otomatis menyimpan, mengirim, dan memperbarui cookie sesi (sessionid) dan token CSRF (csrftoken) dalam setiap permintaan.

3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
- Instance CookieRequest harus dibagikan ke semua komponen aplikasi (melalui Provider) karena instance tersebut berfungsi sebagai penyimpan status sesi global. Setelah login, CookieRequest menyimpan cookie otentikasi yang diberikan oleh Django. Semua permintaan berikutnya—baik untuk mengambil data atau mengirim formulir—perlu menyertakan cookie yang sama untuk membuktikan identitas pengguna dan untuk melewati pemeriksaan CSRF Django. Jika instance baru dibuat di setiap widget, cookie akan hilang, dan aplikasi tidak dapat mempertahankan sesi login pengguna, menyebabkan setiap permintaan dianggap anonim.

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
- Konfigurasi konektivitas ini krusial untuk menjembatani Flutter dan Django yang berjalan di localhost. Menambahkan 10.0.2.2 pada ALLOWED_HOSTS Django diperlukan karena ini adalah cara emulator Android merujuk kembali ke mesin pengembangan (host). Tanpa ini, Django menolak permintaan dari emulator dengan error 400. Aktivasi CORS diperlukan karena Flutter berjalan di origin yang berbeda dari Django, dan tanpanya, permintaan lintas-domain akan diblokir. Pengaturan SameSite=None pada cookie memastikan cookie sesi dapat dikirim dalam konteks lintas-situs. Terakhir, izin akses internet di Android adalah prasyarat sistem operasi; tanpanya, aplikasi Flutter tidak akan diizinkan untuk melakukan koneksi jaringan apa pun.

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
- Pengiriman data dimulai ketika pengguna submit formulir di Flutter. Data tersebut dikodekan menjadi JSON dan dikirim melalui request.postJson() ke endpoint Django (/create-flutter/). Django menerima request ini di fungsi create_news_flutter, mem-parsing JSON, memvalidasi dan membersihkan data, lalu menyimpan entri baru ke database. Django kemudian mengirimkan respons sukses. Setelah Flutter menerima konfirmasi sukses, ia menavigasi ke halaman daftar berita. Di halaman daftar, FutureBuilder melakukan request GET ke endpoint JSON (/json/), mengambil data yang sekarang sudah diperbarui (termasuk entri baru), memetakan data JSON tersebut ke model Dart, dan menampilkannya di UI.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
- Proses autentikasi dimulai dengan Register, di mana Flutter mengirim kredensial ke Django, yang kemudian membuat User baru di database. Saat Login, Flutter mengirim kredensial melalui request.login(). Jika kredensial valid, Django menjalankan login(), menghasilkan sessionid dan csrftoken yang dikirim kembali sebagai cookie. CookieRequest secara otomatis menyimpan cookie ini. Status request.loggedIn menjadi true, memungkinkan akses ke menu utama. Untuk semua permintaan selanjutnya, CookieRequest secara otomatis menyertakan cookie ini, memungkinkan Django mengidentifikasi pengguna. Proses Logout melibatkan pengiriman request ke Django untuk menghapus sesi, dan CookieRequest akan menghapus cookie yang tersimpan, mengakhiri sesi autentikasi.