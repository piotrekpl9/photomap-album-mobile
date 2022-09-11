import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoMapAlbumApp());
}

class PhotoMapAlbumApp extends StatelessWidget {
  const PhotoMapAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PhotoMapAlbum",
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
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
