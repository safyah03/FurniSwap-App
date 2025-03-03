import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:furni_swap/auth_screens/forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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

  Widget buildSocialAccountItem({required AssetImage icon}) {
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 5),
        child: Image(
          image: icon,
          width: 25,
          height: 25,
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 70,
              ),
              buildTextFormField(
                  obscureText: false,
                  type: TextInputType.emailAddress,
                  label: Text("Email")),
              const SizedBox(
                height: 10,
              ),
              buildTextFormField(
                  obscureText: true,
                  type: TextInputType.visiblePassword,
                  label: Text("Password")),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Forgot your password?"),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ForgotPasswordScreen()));
                      },
                      icon: const Icon(
                        Icons.arrow_right_alt,
                        color: Color(0xff3a75ba),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Color(0xff3a75ba),
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Or login with social account"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSocialAccountItem(
                          icon: const AssetImage("assets/images/google.png")),
                      SizedBox(
                        width: 10,
                      ),
                      buildSocialAccountItem(
                          icon: const AssetImage("assets/images/facebook.png")),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
