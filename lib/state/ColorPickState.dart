import 'dart:ui';

abstract class ColorPickState {}

class DefaultColorPickState extends ColorPickState {
  Color color;
  DefaultColorPickState({this.color});
}
class FetchColorPickState extends ColorPickState {
  Color color;
  FetchColorPickState({this.color});
}