import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randcolor/bloc/color_event.dart';
import 'package:randcolor/painter.dart';

class ColorBloc extends Bloc<ColorEvent, Color> {
  final Painter _painter;

  ColorBloc(this._painter) : assert(_painter != null);

  get initialState => Color.fromARGB(255, 255, 255, 255);

  @override
  Stream<Color> mapEventToState(event) async* {
    if (event is ColorChange) {
      yield _painter.getRandomColor();
    }
  }
}
