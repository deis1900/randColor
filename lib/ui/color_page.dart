import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randcolor/bloc/color_bloc.dart';
import 'package:randcolor/bloc/color_event.dart';

class ColorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) {
        if (color is Color) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<ColorBloc>(context).add(
                ColorChange(),
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              color: color,
              child: Center(
                child: Text(
                  'Hey there',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          );
        } else {
          throw StateError('Unexpected state ${color.runtimeType}');
        }
      },
    );
  }
}
