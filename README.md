# Praktikum 5 - State Management Sederhana & Assets pada Flutter

## 1. Deskripsi Aplikasi

Aplikasi ini merupakan project Flutter untuk Praktikum 5 mata kuliah Teknologi Mobile.

Project ini dibuat untuk menerapkan konsep **state management sederhana** menggunakan `StatefulWidget` dan `setState()`.

Aplikasi ini terdiri dari dua halaman utama, yaitu **Profile Card** dan **Kalkulator Sederhana**.

Navigasi antar halaman menggunakan `BottomNavigationBar`, sehingga pengguna dapat berpindah dari halaman profil ke halaman kalkulator dalam satu aplikasi.

---

## 2. Identitas

| Keterangan | Data |
|---|---|
| Nama | Ariani Putri Andini |
| NIM | 2400016018 |
| Kelas | C |
| Program Studi | Sistem Informasi |
| Mata Kuliah | Teknologi Mobile |
| Praktikum | Praktikum 5 |

---

## 3. Ketentuan Tugas

Pada praktikum ini, mahasiswa diminta membuat satu aplikasi Flutter yang terdiri dari dua halaman berbeda.

Halaman yang dibuat adalah:

1. Halaman Profile Card
2. Halaman Kalkulator Sederhana

Navigasi antar halaman dapat menggunakan `BottomNavigationBar`, `Drawer`, `TabBar`, atau `Navigator`.

Pada aplikasi ini, navigasi yang digunakan adalah `BottomNavigationBar`.

---

## 4. Fitur Aplikasi

| No. | Fitur | Keterangan |
|---|---|---|
| 1 | Profile Card | Menampilkan informasi profil mahasiswa |
| 2 | Foto Profil | Menampilkan foto profil dari assets lokal |
| 3 | Nama Lengkap | Menampilkan nama lengkap mahasiswa |
| 4 | Jurusan / Program Studi | Menampilkan program studi mahasiswa |
| 5 | Status | Menampilkan deskripsi singkat mahasiswa |
| 6 | Kalkulator Sederhana | Melakukan operasi matematika dasar |
| 7 | Input Angka Pertama | Digunakan untuk memasukkan angka pertama |
| 8 | Input Angka Kedua | Digunakan untuk memasukkan angka kedua |
| 9 | Operasi Tambah | Menghitung penjumlahan dua angka |
| 10 | Operasi Kurang | Menghitung pengurangan dua angka |
| 11 | Operasi Kali | Menghitung perkalian dua angka |
| 12 | Operasi Bagi | Menghitung pembagian dua angka |
| 13 | Validasi Input Kosong | Menampilkan pesan jika input belum diisi |
| 14 | Validasi Pembagian Nol | Menampilkan pesan jika angka kedua bernilai nol |

---

## 5. Halaman Profile Card

Halaman Profile Card digunakan untuk menampilkan informasi profil mahasiswa.

Informasi yang ditampilkan pada halaman ini meliputi:

- Foto profil
- Nama lengkap
- Jurusan atau program studi
- Status atau deskripsi singkat

Data profil yang digunakan pada aplikasi ini adalah:

| Keterangan | Isi |
|---|---|
| Nama | Ariani Putri Andini |
| Jurusan | Sistem Informasi |
| Status | UI/UX Designer |

Halaman ini dibuat menggunakan beberapa widget Flutter seperti `Container`, `Column`, `Row`, `Icon`, `Text`, dan `Image.asset`.

Foto profil ditampilkan menggunakan gambar lokal yang disimpan pada folder `assets/images`.

---

## 6. Halaman Kalkulator Sederhana

Halaman Kalkulator Sederhana digunakan untuk melakukan operasi matematika dasar.

Operasi yang tersedia pada aplikasi ini adalah:

- Tambah `+`
- Kurang `-`
- Kali `×`
- Bagi `÷`

Halaman kalkulator memiliki dua input angka, yaitu input angka pertama dan input angka kedua.

Setelah pengguna memasukkan angka dan memilih tombol operasi, aplikasi akan menampilkan hasil perhitungan.

Halaman ini menggunakan `StatefulWidget` karena hasil perhitungan dapat berubah sesuai input pengguna.

Perubahan hasil ditampilkan menggunakan fungsi `setState()`.

---

## 7. Validasi Kalkulator

Aplikasi ini memiliki validasi agar kalkulator tidak memproses data yang tidak sesuai.

Validasi yang diterapkan adalah:

| No. | Validasi | Keterangan |
|---|---|---|
| 1 | Input kosong | Jika salah satu input kosong, aplikasi menampilkan pesan `Input tidak boleh kosong` |
| 2 | Input bukan angka | Jika input tidak valid, aplikasi menampilkan pesan `Masukkan angka yang valid` |
| 3 | Pembagian dengan nol | Jika angka kedua bernilai 0 pada operasi bagi, aplikasi menampilkan pesan `Tidak bisa membagi dengan nol` |

Validasi ini dibuat agar aplikasi tidak mengalami error saat digunakan.

---

## 8. Teknologi yang Digunakan

Project ini dibuat menggunakan beberapa teknologi berikut:

| Teknologi | Keterangan |
|---|---|
| Flutter | Framework utama untuk membuat aplikasi |
| Dart | Bahasa pemrograman yang digunakan |
| Google Fonts | Package untuk menggunakan font Poppins |
| Assets Lokal | Digunakan untuk menyimpan foto profil |
| StatefulWidget | Digunakan pada halaman yang memiliki perubahan data |
| setState() | Digunakan untuk memperbarui tampilan saat data berubah |
| BottomNavigationBar | Digunakan sebagai navigasi antar halaman |

---

## 9. Struktur Folder Project

```text
kalkulator_ariani_prak5
├── assets
│   └── images
│       └── profile.jpg
├── lib
│   ├── pages
│   │   ├── calculator_page.dart
│   │   └── profile_page.dart
│   ├── theme
│   │   └── app_theme.dart
│   ├── widgets
│   │   ├── calculator_button.dart
│   │   └── profile_info_item.dart
│   └── main.dart
├── pubspec.yaml
└── README.md
```

---

## 10. Penjelasan Struktur Folder

| Folder / File | Keterangan |
|---|---|
| `assets/images` | Menyimpan gambar profil yang digunakan pada halaman Profile Card |
| `lib/pages` | Menyimpan file halaman aplikasi |
| `profile_page.dart` | File untuk halaman Profile Card |
| `calculator_page.dart` | File untuk halaman Kalkulator Sederhana |
| `lib/widgets` | Menyimpan widget tambahan yang digunakan kembali |
| `profile_info_item.dart` | Widget untuk menampilkan item informasi profil |
| `calculator_button.dart` | Widget untuk tombol operasi kalkulator |
| `lib/theme` | Menyimpan pengaturan tema aplikasi |
| `app_theme.dart` | File untuk mengatur warna, font, border, dan shadow |
| `main.dart` | File utama untuk menjalankan aplikasi dan mengatur navigasi |
| `pubspec.yaml` | File konfigurasi package dan assets |

---

## 11. Package yang Digunakan

Package tambahan yang digunakan pada project ini adalah:

```yaml
google_fonts: ^6.2.1
cupertino_icons: ^1.0.8
```

Package `google_fonts` digunakan untuk menerapkan font Poppins pada tampilan aplikasi.

Package `cupertino_icons` digunakan untuk mendukung penggunaan ikon pada Flutter.

---

## 12. Konfigurasi Assets

Assets gambar lokal didaftarkan pada file `pubspec.yaml`.

```yaml
flutter:
  uses-material-design: true

  assets:
    - assets/images/
```

File gambar profil disimpan pada folder berikut:

```text
assets/images/profile.jpg
```

Konfigurasi ini diperlukan agar Flutter dapat membaca dan menampilkan gambar lokal pada aplikasi.

---

## 13. Implementasi State Management

State management sederhana diterapkan menggunakan `setState()`.

Pada aplikasi ini, `setState()` digunakan pada dua bagian utama.

Pertama, `setState()` digunakan pada navigasi untuk mengubah halaman aktif ketika pengguna memilih menu Profile atau Calculator.

Kedua, `setState()` digunakan pada kalkulator untuk memperbarui hasil perhitungan atau menampilkan pesan error.

Contoh penggunaan `setState()` pada navigasi:

```dart
void changePage(int index) {
  setState(() {
    selectedIndex = index;
  });
}
```

Contoh penggunaan `setState()` pada kalkulator:

```dart
setState(() {
  hasil = 'Hasil: ${formatAngka(hasilHitung)}';
  isError = false;
});
```

---

## 14. Pengujian Aplikasi

Pengujian dilakukan untuk memastikan setiap fitur pada aplikasi berjalan dengan baik.

| No. | Pengujian | Input | Hasil |
|---|---|---|---|
| 1 | Operasi Tambah | 11 + 10 | 21 |
| 2 | Operasi Kurang | 50 - 600 | -550 |
| 3 | Operasi Kali | 11 × 20 | 220 |
| 4 | Operasi Bagi | 90000 ÷ 1085 | 82.95 |
| 5 | Input Kosong | Salah satu input kosong | Input tidak boleh kosong |
| 6 | Pembagian dengan Nol | Angka kedua 0 | Tidak bisa membagi dengan nol |

---

## 17. Tampilan Aplikasi

### Halaman Profile Card

Halaman Profile Card menampilkan foto profil, nama lengkap, jurusan, dan status mahasiswa.


### Halaman Kalkulator Sederhana

Halaman Kalkulator Sederhana menampilkan dua input angka, empat tombol operasi, dan hasil perhitungan.

---

## 18. Kesesuaian dengan Ketentuan Praktikum

| Ketentuan Praktikum | Status |
|---|---|
| Membuat satu aplikasi Flutter | Terpenuhi |
| Memiliki dua halaman berbeda | Terpenuhi |
| Halaman Profile Card | Terpenuhi |
| Halaman Kalkulator Sederhana | Terpenuhi |
| Navigasi antar halaman | Terpenuhi |
| Menampilkan foto profil | Terpenuhi |
| Menampilkan nama lengkap | Terpenuhi |
| Menampilkan jurusan / program studi | Terpenuhi |
| Menampilkan status | Terpenuhi |
| Input angka pertama | Terpenuhi |
| Input angka kedua | Terpenuhi |
| Tombol tambah | Terpenuhi |
| Tombol kurang | Terpenuhi |
| Tombol kali | Terpenuhi |
| Tombol bagi | Terpenuhi |
| Menampilkan hasil perhitungan | Terpenuhi |
| Validasi input kosong | Terpenuhi |
| Validasi pembagian dengan nol | Terpenuhi |

---

## 19. Kesimpulan

Aplikasi Flutter Praktikum 5 berhasil dibuat dengan dua halaman utama, yaitu Profile Card dan Kalkulator Sederhana.

Halaman Profile Card berhasil menampilkan foto profil, nama lengkap, jurusan, dan status mahasiswa.

Halaman Kalkulator Sederhana berhasil menjalankan operasi tambah, kurang, kali, dan bagi.

Aplikasi ini juga sudah menerapkan validasi input kosong dan pembagian dengan nol.

Selain itu, aplikasi menggunakan assets lokal, Google Fonts, BottomNavigationBar, StatefulWidget, dan setState() sesuai dengan kebutuhan praktikum.

---
