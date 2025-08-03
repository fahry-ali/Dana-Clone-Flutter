import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MintaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Data untuk QR Code
    final String qrData = "https://www.dana.id"; // Data QR Code

    return Scaffold(
      appBar: AppBar(
        title: const Text("Minta Uang"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Tunjukkan QR Code berikut untuk menerima pembayaran:",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Menampilkan QR Code
            QrImageView(
              data: qrData, // Data yang dikodekan ke QR Code
              version: QrVersions.auto, // Versi QR Code otomatis
              size: 200.0, // Ukuran QR Code
              backgroundColor: Colors.white, // Warna latar belakang
            ),
            const SizedBox(height: 20),
            ElevatedButton(
  onPressed: () {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("QR Code berhasil dibagikan!"),
      ),
    );
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // Warna tombol
    foregroundColor: Colors.white, // Warna teks tombol
  ),
  child: const Text("Bagikan QR Code"),
),

          ],
        ),
      ),
    );
  }
}
