import 'package:flutter/material.dart';
import 'package:furni_swap/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget buildInfoItem({required String title, required String info, required VoidCallback onPressed}) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(right: 15),
            backgroundColor: const Color(0xfff9f9f9),
            overlayColor: Colors.blueGrey.withOpacity(0.2),
            shadowColor: Colors.white12,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      info,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Profile",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/profile.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gasser Wael",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            "Gasserwael@gmail.com",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            buildInfoItem(
                title: "My orders",
                info: "Already have 12 orders",
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SettingsScreen()))),
            const Divider(height: 0, thickness: 0.5),
            buildInfoItem(
                title: "Shipping addresses",
                info: "3 addresses",
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SettingsScreen()))),
            const Divider(height: 0, thickness: 0.5),
            buildInfoItem(
                title: "Payment methods",
                info: "Visa  **34",
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SettingsScreen()))),
            const Divider(height: 0, thickness: 0.5),
            buildInfoItem(
                title: "Points",
                info: "You have 520 point",
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SettingsScreen()))),
            const Divider(height: 0, thickness: 0.5),
            buildInfoItem(
                title: "My reviews",
                info: "Reviews for 4 items",
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SettingsScreen()))),
            const Divider(height: 0, thickness: 0.5),
            buildInfoItem(
                title: "Settings",
                info: "Notifications, password",
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SettingsScreen()))),
          ],
        ),
      ),
    );
  }
}

