import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello Abdenour!',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
        children: [
          // Profile Picture
          ClipOval(
            child: Image.asset(
              'assets/profilepic.png',
              width: 140,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Text(
              'Abdenour Bouziane',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'Software Developer',
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          const SizedBox(height: 16.0),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Contact Information',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      leading: const Icon(Icons.email),
                      title: const Text('Email'),
                      subtitle: Text(
                        'abdenour.bouziane@example.com',
                        style:
                            TextStyle(color: Colors.grey[700], fontSize: 12.0),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone),
                      title: const Text('Phone'),
                      subtitle: Text(
                        '+213 549 74 18 08',
                        style:
                            TextStyle(color: Colors.grey[700], fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100],
                  shadowColor: Colors.blueAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print("Test");
                },
                icon: const Icon(
                  Icons.edit,
                  color: Colors.blueAccent,
                ),
                label: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  color: Colors.blueAccent,
                ),
                label: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
