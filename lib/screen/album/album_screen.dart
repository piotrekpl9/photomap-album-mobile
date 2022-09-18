import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/screen/album/bloc/bloc/album_bloc.dart';

class AlbumScreen extends StatefulWidget {
  static String path = "/album";
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumBloc, AlbumState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text("Album")),
          body: const Center(
            child: Text("asd"),
          ),
        );
      },
    );
  }
}
