import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text("Hoşgeldin $name",
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Kullanıcı Adını giriniz",
                        labelText: "Kullanıcı Adı"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Şifrenizi giriniz", labelText: "Şifre"),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    style:
                        TextButton.styleFrom(minimumSize: const Size(150, 40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: const Text("Giriş Yap"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
