import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:randcolor/bloc/color_bloc.dart';

import 'package:randcolor/painter.dart';

void main() {
  group('ColorBloc', () {
    ColorBloc colorBloc;

    setUp(() {
      colorBloc = ColorBloc(Painter());
    });

    test('initial color is white', () {
      expect(colorBloc.initialState, equals(Color.fromARGB(255, 255, 255, 255)));
    });
  });
}
