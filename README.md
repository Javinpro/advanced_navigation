# 🚀 advanced_navigation
Advanced Navigation App adalah aplikasi yang menunjukkan penerapan navigasi lanjutan dengan fitur seperti pengelolaan rute dinamis, pembuatan layar berdasarkan input pengguna, dan navigasi antar section menggunakan Bottom Navigation Bar. Aplikasi ini memungkinkan pengguna untuk memasukkan angka dan menghasilkan sejumlah layar dinamis dengan konten unik, dilengkapi dengan animasi transisi yang mulus dan indikator halaman interaktif. Selain itu, aplikasi ini memiliki penanganan kesalahan yang baik, memberikan SnackBar sebagai umpan balik saat input tidak valid atau navigasi salah, serta menawarkan pengalaman pengguna yang responsif dan menarik melalui desain dan penggunaan package Flutter seperti Smooth Page Indicator.

## 🛠️ Cara Install dan Pakai
Pastikan Anda telah menginstal Flutter SDK dan Dart di komputer Anda. Pastikan ada editor kode seperti Android Studio atau Visual Studio Code.

## Langkah-langkah Instalasi
1. Clone repositori ini ke vscode:
```bash
git clone https://github.com/Javinpro/advanced_navigation.git
```
2. Navigasikan ke directory project:
```bash
cd advanced_navigation
```

3. Jalankan perintah berikut untuk menginstal dependencies:
```bash
flutter pub get
```

## Cara deploy aplikasi
1. Siapkan emulator yang telah kalian install, bisa juga menggunakan device eksternal dan bahkan web page.
2. Jalankan perintah berikut:
```bash
flutter run
```
3. Pastikan anda terhubung ke internet.

## Cara menggunakan aplikasi
# Membuka Aplikasi 
- **Tujuan**: Langkah pertama adalah membuka aplikasi untuk memulai.
- **Penjelasan**: Jalankan aplikasi di emulator atau perangkat fisik anda. Setelah aplikasi terbuka, tampilan utama aplikasi akan muncul dengan Bottom Navigation Bar yang memungkinkan anda untuk berpindah antar berbagai bagian aplikasi. Bottom Navigation Bar ini adalah tempat utama untuk menavigasi antar tiga bagian aplikasi yang berbeda.

# Navigasi Antar Section
- **Tujuan**: Mempermudah anda dalam berpindah antar berbagai section atau bagian dari aplikasi.
- **Penjelasan**: Dengan Bottom Navigation Bar, anda dapat memilih salah satu dari tiga section utama yang ada:
    - Section 1: First Screen - Tampilan pertama yang menampilkan konten atau informasi awal.
    - Section 2: Second Screen - Layar kedua yang menampilkan data atau informasi yang telah dipassing dari First Screen.
    - Section 3: Dynamic Input Section - Layar yang memungkinkan anda untuk memasukkan input dan menghasilkan layar dinamis berdasarkan input tersebut.


# Navigasi di First Screen dan Second Screen
- **Tujuan**: Memperlihatkan cara berpindah antar layar menggunakan navigasi berbasis rute dan passing data.
- **Penjelasan**: 
    - First Screen: Anda dapat menekan tombol untuk berpindah ke Second Screen. Selain itu, First Screen juga mengirimkan data ke Second Screen menggunakan passing arguments.
    - Second Screen: Di layar ini, anda dapat melihat data yang dikirim dari First Screen. Layar ini juga dilengkapi dengan tombol "Go Back" yang memungkinkan anda untuk kembali ke First Screen.


# Generate Layar Dinamis
- **Tujuan**: Memberikan pengalaman interaktif dengan membuat layar berdasarkan input anda.
- **Penjelasan**: 
    - Di Dynamic Input Section, anda diminta untuk memasukkan angka yang menunjukkan jumlah layar dinamis yang ingin dibuat.
    - Setelah angka dimasukkan, anda bisa menekan tombol "Generate Screens". Aplikasi kemudian akan membuat sejumlah layar dinamis sesuai dengan angka yang dimasukkan.
    - Layar-layar ini akan ditampilkan dalam bentuk PageView yang dapat digulirkan (swiped).
    - Smooth Page Indicator di bagian bawah layar menunjukkan posisi anda saat ini di antara layar dinamis, memberikan visualisasi yang jelas.
    - Gestur swipe memungkinkan anda untuk dengan mudah menggeser layar dinamis dari satu ke lainnya.

# Error Handling
- **Tujuan**: Memberikan umpan balik kepada anda jika terjadi kesalahan, seperti input yang tidak valid.
- **Penjelasan**: 
    - Jika anda memasukkan angka yang tidak valid di Dynamic Input Section (misalnya huruf atau angka negatif), aplikasi akan menampilkan SnackBar dengan pesan "Please enter a valid number!". Ini bertujuan untuk memberi tahu anda bahwa input yang diberikan tidak bisa diproses.
    - SnackBar juga muncul jika terjadi kesalahan lain, seperti mencoba mengakses layar yang tidak ada. Umpan balik ini memastikan anda tahu apa yang salah dan apa yang perlu diperbaiki.


## Approach
Dalam pengembangan aplikasi ini, pendekatan yang diambil adalah menggunakan navigasi berbasis nama (named routes) untuk meningkatkan struktur aplikasi. Selain itu, aplikasi ini menggabungkan berbagai fitur navigasi kompleks, seperti dynamic routing, di mana pengguna dapat membuat layar secara dinamis berdasarkan input mereka. Dengan memanfaatkan Bottom Navigation Bar, aplikasi ini memungkinkan pengguna untuk berpindah antar section dengan mudah, sementara layar dinamis memberikan pengalaman interaktif yang lebih menarik. Pendekatan lain yang diterapkan adalah penanganan kesalahan yang ramah pengguna, dengan memberikan umpan balik menggunakan SnackBar yang jelas dan mudah dipahami.

## Challenges
Beberapa tantangan yang dihadapi selama pengembangan aplikasi ini adalah mengelola dynamic routing dan memastikan navigasi antar layar tetap mulus meskipun data atau layar yang ditampilkan bersifat dinamis. Memastikan aplikasi tetap responsif dan memberikan umpan balik yang tepat ketika pengguna memasukkan input yang salah juga menjadi perhatian utama. Penggunaan animasi transisi dan PageView untuk menampilkan layar dinamis juga membawa tantangan dalam hal sinkronisasi animasi dan pemeliharaan status halaman yang tepat. Selain itu, mengimplementasikan smooth page indicator dengan benar dalam konteks halaman dinamis memerlukan perhatian ekstra agar transisi antar layar terlihat alami.

## Fitur Utama
- Navigasi Multi-Screen: Memungkinkan navigasi antar tiga layar utama menggunakan Bottom Navigation Bar.
- Passing Data (Arguments): Mengirim dan menerima data antar layar dengan mudah.
- Dynamic Route Generation: Menghasilkan layar dinamis berdasarkan input pengguna, memungkinkan tampilan konten yang beragam.
- Animasi Transisi: Menambahkan animasi transisi halus antar layar untuk pengalaman pengguna yang lebih interaktif.
- PageView dengan Indikator Halaman: Menampilkan halaman dinamis dalam PageView dengan Smooth Page Indicator di bagian bawah.
- Error Handling: Menyediakan SnackBar untuk memberikan umpan balik langsung saat terjadi kesalahan navigasi atau input.
- Gestur Swipe: Memungkinkan pengguna untuk menggeser layar dinamis dengan mudah.



