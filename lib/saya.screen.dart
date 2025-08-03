import 'package:flutter/material.dart';

class SayaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengaturan"),
        backgroundColor: Colors.blue, // Warna khas Dana
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header Profil
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue.shade100,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Muhammad Fahry",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "fahry4245@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      // Navigasi ke halaman pengaturan profil
                    },
                    child: const Text(
                      "Kelola Akun",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Menu Pengaturan
          ListTile(
            leading: Icon(Icons.lock, color: Colors.blue),
            title: const Text("Keamanan"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Navigasi ke pengaturan keamanan
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.blue),
            title: const Text("Notifikasi"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Navigasi ke pengaturan notifikasi
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.help_outline, color: Colors.blue),
            title: const Text("Bantuan"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Navigasi ke halaman bantuan
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.info_outline, color: Colors.blue),
            title: const Text("Tentang Aplikasi"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Navigasi ke halaman tentang aplikasi
            },
          ),
          const Divider(),
          // Tombol Logout
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Log out pengguna
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: const Text(
                "Logout",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
