import 'package:flutter/material.dart';
import 'package:furni_swap/auth_screens/login_screen.dart';
import 'package:furni_swap/presentation/screens/profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Widget buildTextFormField(
      {required bool obscureText,
      required TextInputType type,
      required Text label}) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 2,
        )
      ], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: type,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusColor: Colors.white,
            label: label,
            border: InputBorder.none,
            labelStyle: const TextStyle(color: Colors.grey)),
      ),
    );
  }

  Widget buildModalBottomSheet() {
    return Wrap(children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'Password Change',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              buildTextFormField(
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  label: const Text("Old Password")),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?",
                      style: TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              buildTextFormField(
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  label: const Text("New Password")),
              const SizedBox(
                height: 15,
              ),
              buildTextFormField(
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  label: const Text("Repeat New Password")),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: const Color(0xff3a75ba),
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "SAVE  PASSWORD",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Personal Information",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 17,
              ),
              buildTextFormField(
                  obscureText: false,
                  type: TextInputType.name,
                  label: const Text("Full Name")),
              const SizedBox(
                height: 17,
              ),
              buildTextFormField(
                  obscureText: false,
                  type: TextInputType.datetime,
                  label: const Text("Date of Birth")),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        backgroundColor: const Color(0xfff9f9f9),
                        context: context,
                        builder: (BuildContext context) {
                          return buildModalBottomSheet();
                        },
                      );
                    },
                    child: const Text("Change",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              buildTextFormField(
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  label: const Text("Password")),
              const SizedBox(
                height: 90,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: const Color(0xffDB3022),
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "Log Out",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
