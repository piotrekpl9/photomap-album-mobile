import 'package:flutter/material.dart';
import 'package:photomapalbummobile/screen/album/album_screen.dart';
import 'package:photomapalbummobile/screen/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static String path = "/";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Logowanie")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, AlbumScreen.path, (_) => false);
          },
          child: const Text("Zaloguj"),
        ),
      ),
    );
  }
}
