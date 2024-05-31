import 'package:flutter/material.dart';
import 'package:my_project/src/JSON/users.dart';
import 'package:my_project/src/Login.dart';

class Profile extends StatelessWidget {
  final Users? profile;
  const Profile({super.key, this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images.png"),
                    radius: 75,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  profile?.usrName ?? "aya",
                  style: const TextStyle(fontSize: 28),
                ),
                Text(
                  profile?.email ?? "aya@gmail.com",
                  style: const TextStyle(fontSize: 17, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                ListTile(
                  leading: const Icon(Icons.person, size: 30),
                  subtitle: const Text("Full name"),
                  title: Text(profile?.usrName ?? "aya"),
                ),
                ListTile(
                  leading: const Icon(Icons.email, size: 30),
                  subtitle: const Text("Email"),
                  title: Text(profile?.email ?? "aya@gmail.com"),
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle, size: 30),
                  subtitle: Text(profile?.usrName ?? "aya"),
                  title: const Text("admin"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
