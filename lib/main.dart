import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randcolor/bloc/simple_bloc_delegate.dart';
import 'package:randcolor/painter.dart';

import 'bloc/color_bloc.dart';
import 'ui/color_page.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorBloc>(
      create: (BuildContext context) => ColorBloc(
        Painter(),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: Scaffold(body: ColorPage()),
      ),
    );
  }
}
