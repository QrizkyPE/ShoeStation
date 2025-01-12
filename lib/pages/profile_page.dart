import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4C53A5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFF2F2F2),),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali ke halaman HomePage
          },
        ),
        title: const Text('Profile', style: TextStyle(color: Color(0xFFF2F2F2)),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Gambar profil
            Center(
              child: CircleAvatar(
                radius: 60, // Ukuran lingkaran gambar
                backgroundImage: AssetImage('images/person.png'),
              ),
            ),

            const SizedBox(height: 20),

            // Username
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Username'),
              subtitle: const Text('user'),
            ),

            // Phone number
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Phone Number'),
              subtitle: const Text('081234567890'),
            ),

            // Address
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Address'),
              subtitle: const Text('Jl. Abc'),
            ),
          ],
        ),
      ),
    );
  }
}
