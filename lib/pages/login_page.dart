import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("Welcome",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Şifrenizi giriniz", labelText: "Şifre"),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print("Tolga");
                  },
                  child: const Text("Login"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
