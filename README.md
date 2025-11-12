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
   Warna tema disesuaikan agar aplikasi Supercopa memiliki identitas visual yang konsisten dengan brand toko. Tema utama menggunakan kombinasi warna pink fanta (#F35695) dan pink soft (#F8BDBD) untuk memberikan kesan energik, modern, dan sporty. Warna oranye (#F98805) digunakan sebagai aksen pada tombol dan elemen interaktif agar terlihat hangat dan menarik. Selain itu, warna hijau tua (#264414) dan kuning lime (#DDE255) digunakan secara halus untuk menyeimbangkan tampilan agar tetap segar dan dinamis. Semua warna tersebut diterapkan secara konsisten pada AppBar, tombol, teks, dan latar belakang melalui pengaturan ThemeData di MaterialApp, sehingga aplikasi Supercopa memiliki identitas visual yang unik dan mudah dikenali.