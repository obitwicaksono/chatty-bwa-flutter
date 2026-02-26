# 📱 Chatty BWA Flutter

Chatty BWA Flutter adalah aplikasi chat berbasis **Flutter** yang mendukung berbagai platform seperti Android, iOS, Web, Windows, macOS, dan Linux.

Project ini dibuat sebagai implementasi aplikasi chat dengan tampilan modern dan arsitektur yang scalable.

---

## 🚀 Fitur Utama

- 💬 Tampilan chat modern
- 📃 Daftar percakapan
- 📨 Kirim & terima pesan teks
- 🔄 Realtime update (jika terhubung backend)
- 🌍 Multi-platform support (Android, iOS, Web, Desktop)

---

## 🛠 Teknologi yang Digunakan

- Flutter
- Dart
- (Opsional) Firebase / Backend API
- Provider / State Management lainnya

---

## 📦 Instalasi

1. Clone repository:

```bash
git clone https://github.com/obitwicaksono/chatty-bwa-flutter.git
```

2. Masuk ke folder project:

```bash
cd chatty-bwa-flutter
```

3. Install dependencies:

```bash
flutter pub get
```

---

## ▶️ Menjalankan Aplikasi

### Android
```bash
flutter run -d android
```

### iOS
```bash
flutter run -d ios
```

### Web
```bash
flutter run -d chrome
```

### Desktop (Windows/macOS/Linux)
```bash
flutter run -d windows
flutter run -d macos
flutter run -d linux
```

---

## 📁 Struktur Folder

```
chatty-bwa-flutter/
│
├── android/          # Konfigurasi native Android
├── ios/              # Konfigurasi native iOS
├── web/              # Konfigurasi web
├── lib/              # Source code utama Flutter
│   ├── main.dart     # Entry point aplikasi
│   ├── screens/      # Halaman-halaman aplikasi
│   ├── widgets/      # Komponen UI reusable
│   ├── models/       # Model data
│   └── services/     # Logic API / Backend
├── assets/           # Gambar, font, dll
├── test/             # Unit & widget testing
└── pubspec.yaml      # Dependency & konfigurasi project
```

---

## 🧠 Cara Kerja Singkat

Aplikasi ini menggunakan Flutter sebagai UI framework.  
Data pesan dapat diambil dari:

- Local state management
- Backend API
- Firebase Firestore (jika diintegrasikan)

UI akan melakukan rebuild ketika ada perubahan state.

---

## 🧪 Testing

Untuk menjalankan testing:

```bash
flutter test
```

---

## 📌 Kontribusi

Kontribusi terbuka untuk siapa saja.

Langkah kontribusi:
1. Fork repository
2. Buat branch baru
3. Commit perubahan
4. Ajukan Pull Request

---

## 📄 Lisensi

Belum ditentukan.  
Disarankan menambahkan file LICENSE (contoh: MIT License).

---

## 👨‍💻 Developer

Dikembangkan oleh:
**Obit Wicaksono**

---

⭐ Jika project ini membantu, jangan lupa berikan star di repository!
