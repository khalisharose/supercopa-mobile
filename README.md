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