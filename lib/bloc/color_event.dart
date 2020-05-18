import 'package:equatable/equatable.dart';

abstract class ColorEvent extends Equatable{
  @override
  List<Object> get props => [];

}
class ChangeColor extends ColorEvent{

}