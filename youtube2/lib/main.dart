import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:youtube2/bloc/videos_bloc.dart';
import 'package:youtube2/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: MaterialApp(
        title: 'FlutterTube',
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
