import 'package:flutter/material.dart';
import 'package:photomapalbummobile/screens/album/album_screen.dart';
import 'package:photomapalbummobile/screens/auth/login_screen.dart';
import 'package:photomapalbummobile/screens/auth/register_screen.dart';
import 'package:photomapalbummobile/screens/home/home_screen.dart';
import 'package:photomapalbummobile/screens/profile/profile_screen.dart';
import 'package:photomapalbummobile/screens/settings/settings_screen.dart';

void main() {
  runApp(const PhotoMapAlbumApp());
}

class PhotoMapAlbumApp extends StatelessWidget {
  const PhotoMapAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PhotoMapAlbum",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        HomeScreen.path: (context) => HomeScreen(),
        AlbumScreen.path: (context) => AlbumScreen(),
        LoginScreen.path: (context) => LoginScreen(),
        RegisterScreen.path: (context) => RegisterScreen(),
        ProfileScreen.path: (context) => ProfileScreen(),
        SettingsScreen.path: (context) => SettingsScreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("PhotoMapAlbum"),
        ),
      ),
      body: const Center(
        child: Text("Test"),
      ),
    );
  }
}
