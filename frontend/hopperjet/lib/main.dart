import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hopperjet/interacter/interactor.dart';

import 'package:hopperjet/view/welcomepage.dart';
import 'package:window_size/window_size.dart';

void main() {
  runApp(const MyApp());
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('HopperJet');
    setWindowMinSize(const Size(1500, 900));
    setWindowMaxSize(Size.infinite);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HopperJet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          brightness: Brightness.dark),
      home: const WelcomePage(),
    );
  }
}
