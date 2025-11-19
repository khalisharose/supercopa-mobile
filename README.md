# supercopa

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Tugas 7
 1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
    Widget tree di flutter adalah struktur hierarki yang menggambarkan susunan seluruh elemen tampilan di aplikasi. Setiap elemen ui pada flutter merupakan widget, dan widget dapat saling membungkus satu sama lain. Hubungan antara parent (induk) dan child (anak) menggambarkan bagaimana satu widget mengatur tampilan dan perilaku widget lain di dalamnya. Misalnya, widget Column sebagai parent dapat berisi beberapa widget child seperti text atau icon, dan parent bertanggung jawab untuk mengatur tata letak, posisi, serta gaya dari anak-anaknya. Dengan sistem ini, flutter membangun antarmuka secara deklaratif melalui susunan widget yang saling berhubungan.
 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
    Dalam proyek ini, saya menggunakan berbagai widget flutter dengan fungsi yang berbeda. Widget MaterialApp berfungsi sebagai root aplikasi yang menyediakan tema Material Design dan sistem navigasi. Widget Scaffold digunakan sebagai kerangka utama halaman yang memuat komponen seperti AppBar dan body. Widget AppBar menampilkan judul aplikasi yaitu SuperCopa. Widget Card digunakan untuk menampilkan informasi pengguna secara rapi dalam bentuk kartu. Widget Container, Padding, dan SizedBox digunakan untuk mengatur jarak, tata letak, dan ukuran elemen. Widget Row dan Column menyusun widget lain secara horizontal dan vertikal. Widget GridView.count digunakan untuk menampilkan tombol menu dalam bentuk grid dengan tiga kolom. Widget Material dan InkWell berfungsi untuk menampilkan tombol dengan efek klik (ripple effect). Widget Icon dan Text digunakan untuk menampilkan ikon dan teks pada setiap tombol, sedangkan SnackBar berfungsi untuk menampilkan pesan notifikasi singkat saat pengguna menekan tombol.
 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
    Widget MaterialApp berfungsi sebagai wadah utama aplikasi flutter yang menerapkan konsep Material Design. Widget ini menyediakan pengaturan tema, font, warna, navigasi antar halaman, serta integrasi dengan elemen-elemen seperti Scaffold, AppBar, dan SnackBar. Karena perannya yang penting, MaterialApp hampir selalu digunakan sebagai widget root agar widget lain dapat mengakses konteks Material Design dan berfungsi dengan benar.
 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
    StatelessWidget adalah widget yang bersifat statis, artinya tampilannya tidak akan berubah selama aplikasi berjalan. Sementara itu, StatefulWidget memiliki state (keadaan) yang dapat diubah dan diperbarui untuk menampilkan perubahan pada UI, misalnya ketika pengguna berinteraksi atau data berubah. Dalam proyek ini, saya menggunakan StatelessWidget karena tampilan aplikasi bersifat tetap dan tidak memiliki data yang berubah secara dinamis selama dijalankan.
 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
    BuildContext adalah objek yang merepresentasikan posisi suatu widget di dalam widget tree. Objek ini digunakan flutter untuk mengetahui di mana widget tersebut berada dan bagaimana cara berinteraksi dengan widget lain di atasnya. BuildContext juga penting untuk mengakses elemen-elemen seperti tema (Theme.of(context)), navigator (Navigator.of(context)), dan ScaffoldMessenger yang digunakan untuk menampilkan SnackBar. Di dalam metode build(), BuildContext membantu menghubungkan setiap widget dengan hierarki tampilan secara efisien.
 6. Jelaskan konsep "hot reload" di flutter dan bagaimana bedanya dengan "hot restart".
    Konsep hot reload pada flutter memungkinkan pengembang untuk melihat hasil perubahan kode secara instan tanpa harus memulai ulang seluruh aplikasi. Dengan hot reload, perubahan pada tampilan atau logika kecil dapat langsung diterapkan tanpa kehilangan state aplikasi yang sedang berjalan. Sementara itu, hot restart akan menjalankan ulang aplikasi dari awal dan menghapus seluruh state yang ada. Hot reload digunakan saat mengubah tampilan, warna, atau teks, sedangkan hot restart digunakan ketika mengubah struktur utama atau variabel global yang memengaruhi keseluruhan aplikasi.

Tugas 8
 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
   Navigator.push() digunakan untuk menambahkan halaman baru di atas halaman sebelumnya, sehingga pengguna masih bisa kembali dengan tombol back. Sementara itu, Navigator.pushReplacement() mengganti halaman saat ini dengan halaman baru dan menghapus halaman sebelumnya dari stack, jadi pengguna tidak bisa kembali. Pada aplikasi Supercopa, Navigator.push() digunakan saat membuka detail produk atau halaman form tambah produk, sedangkan Navigator.pushReplacement() digunakan saat berpindah dari halaman login ke halaman utama agar pengguna tidak kembali ke login.

 2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
   Struktur halaman pada Supercopa dibuat konsisten menggunakan hierarchy widget Scaffold, AppBar, dan Drawer. Scaffold berfungsi sebagai kerangka utama halaman, AppBar menampilkan judul dan identitas aplikasi, sedangkan Drawer menyediakan navigasi ke halaman lain seperti Home, Tambah Produk, dan About. Dengan kombinasi ini, setiap halaman memiliki tampilan dan navigasi yang seragam di seluruh aplikasi.

 3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
   Padding, SingleChildScrollView, dan ListView digunakan untuk menata tampilan agar lebih rapi dan responsif. Padding memberi jarak antar elemen supaya tidak saling menempel, SingleChildScrollView memungkinkan halaman dapat digulir jika isi form panjang, dan ListView digunakan untuk menampilkan daftar produk secara efisien. Contohnya pada halaman form tambah produk di Supercopa, Padding digunakan di sekitar form, SingleChildScrollView membungkus kolom input agar bisa di-scroll, dan ListView digunakan pada halaman daftar produk.

 4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
   Saya menyesuaikan warna tema agar aplikasi Supercopa memiliki identitas visual yang konsisten dengan brand toko. Tema utama menggunakan kombinasi warna pink fanta (#F35695) dan pink soft (#F8BDBD) untuk memberikan kesan energik, modern, dan sporty. Warna oranye (#F98805) digunakan sebagai aksen pada tombol dan elemen interaktif agar terlihat hangat dan menarik. Selain itu, warna hijau tua (#264414) dan kuning lime (#DDE255) digunakan secara halus untuk menyeimbangkan tampilan agar tetap segar dan dinamis. Semua warna tersebut diterapkan secara konsisten pada AppBar, tombol, teks, dan latar belakang melalui pengaturan ThemeData di MaterialApp, sehingga aplikasi Supercopa memiliki identitas visual yang unik dan mudah dikenali.

Tugas 9
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
   1. Model Dart membuat struktur data menjadi konsisten, aman, dan terprediksi, karena setiap field sudah memiliki tipe yang jelas (String, int, bool, dan lain-lain).

   2. Model memberikan type-safety, sehingga kesalahan tipe terdeteksi saat compile, bukan saat aplikasi sudah jalan.
   3. Null-safety lebih terkendali, karena kita bisa menentukan mana yang wajib dan mana yang bisa null.
   4. Kode lebih mudah dirawat dan diubah; jika backend berubah, kita cukup mengupdate satu file model.
   5. Tanpa model dan hanya memakai Map<String, dynamic>, konsekuensinya:
         1. rawan typo key (contentt, is_fetured).
         2. rawan runtime error karena salah tipe data.
         3. data tidak tervalidasi dan sulit dilacak.
         4. kode lebih berantakan dan tidak scalable.

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

http adalah package umum untuk melakukan request (GET/POST). Cocok untuk API publik dan request tanpa autentikasi.
Sedangkan CookieRequest adalah class khusus dari pbp_django_auth untuk komunikasi dengan Django yang membutuhkan:
penyimpanan cookie session, pengelolaan CSRF token, login, logout, dan request yang membutuhkan authentikasi.

Perbedaan singkat:
http → tidak menyimpan cookie, tidak otomatis kirim CSRF, tidak cocok untuk endpoint Django yang butuh login.
CookieRequest → menyimpan session, mengirim cookie di setiap request, dan mendukung login/logout.

3. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
   1. CookieRequest menyimpan cookie session yang didapat saat login.
   2. Jika setiap halaman membuat instance CookieRequest baru, instance baru tersebut tidak tahu bahwa user sudah login, karena cookie-nya tidak ada.
   3. Dengan membagikan satu instance CookieRequest menggunakan Provider:
      1. semua halaman menggunakan session yang sama,
      2. status login tetap konsisten,
      3. request ke Django selalu membawa cookie yang benar.

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
   Agar Flutter dapat berkomunikasi dengan Django, beberapa konfigurasi penting harus dilakukan baik pada sisi backend maupun sisi Flutter. Pertama, emulator Android tidak bisa langsung mengakses localhost komputer host, sehingga alamat khusus 10.0.2.2 harus digunakan sebagai jembatan. Untuk itu, Django wajib memasukkan alamat tersebut ke dalam ALLOWED_HOSTS, misalnya: ["10.0.2.2", "localhost", "127.0.0.1"]. Jika tidak ditambahkan, Django akan menolak seluruh request dari Flutter dengan error DisallowedHost. Selain itu, kita juga harus mengaktifkan CORS karena Flutter (sebagai aplikasi berbeda origin) akan melakukan request lintas domain. Tanpa CORS, permintaan dari aplikasi akan diblok oleh browser atau emulator sehingga data tidak dapat diambil. Pengaturan cookie juga harus diperhatikan, terutama opsi SameSite dan session cookie agar cookie Django bisa terkirim dalam setiap request yang menggunakan autentikasi. Jika konfigurasi cookie salah, Flutter tidak dapat mempertahankan status login dan user akan dianggap selalu logout. Di sisi Flutter/Android, aplikasi wajib memiliki izin akses internet pada manifest. Tanpa izin ini, semua request HTTP otomatis gagal sebelum mencapai server. Jika keseluruhan konfigurasi ini tidak dilakukan dengan benar, Flutter tidak akan bisa mengambil ataupun mengirim data ke Django, proses login gagal, dan semua fitur yang membutuhkan komunikasi backend tidak berfungsi.

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
   1. User mengisi form di Flutter.
   2. Form divalidasi dan nilai input disimpan ke variabel state.
   3. Flutter mengirim JSON ke Django menggunakan request.postJson().
   4. Django menerima request, mem-parse JSON (json.loads), membuat object Product, dan menyimpan ke database.
   5. Django mengembalikan JSON response (status success)
   6. Flutter menerima respons, menampilkan SnackBar, dan kembali ke halaman list.
   7. Flutter memanggil endpoint JSON (/json/) untuk mengambil data terbaru.
   8. Response JSON dikonversi menjadi model Dart (productEntry).
   9. Data ditampilkan dalam bentuk card pada ListView.builder.
   
6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
   1. Mendesain model Django (Product) lengkap dengan field tambahan seperti is_signed, is_official_merch, stock, dan is_low_stock.
   2. Membuat endpoint JSON sendiri (show_json) dengan struktur data yang disesuaikan untuk Flutter, tidak memakai serializers default.
   3. Membuat model Dart (product_entry.dart) yang memetakan seluruh field dari Django satu per satu.
   4. Membuat halaman list produk (ProductEntryListPage) yang mengambil data dari endpoint JSON dan menampilkannya melalui productEntryCard.
   5. Mendesain UI card dan detail produk sesuai warna brand Supercopa dan field dari Django.
   6. Membuat form create produk di Flutter dengan validasi TextFormField, Dropdown, dan Switch.
   7. Membuat endpoint create_product_flutter untuk menerima JSON dari Flutter dan menyimpan ke database.
   8. Menyusun koneksi login, logout, dan session menggunakan CookieRequest.
   9. Mengatur konektivitas Django (ALLOWED_HOSTS, CORS, cookie settings) dan izin internet Android.
   10. Menguji alur lengkap: input → create → JSON fetch → tampil di Flutter, sambil memperbaiki error yang muncul.