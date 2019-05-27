import 'package:bloc/bloc.dart';
import 'package:flutter_test_app/event/ColorPickEvent.dart';
import 'package:flutter_test_app/repo/color_pick_repository.dart';
import 'package:flutter_test_app/state/ColorPickState.dart';
import 'package:flutter_test_app/utils/app_colors.dart';

class ColorPickBloc extends Bloc<ColorPickEvent, ColorPickState> {
  ColorPickRepository _repository;
  ColorPickBloc() : _repository = ColorPickRepository();

  @override
  get initialState => DefaultColorPickState(color: AppColors.defaultColor);

  @override
  Stream<ColorPickState> mapEventToState(ColorPickState currentState, ColorPickEvent event) async*{
    if(event is UpdatePickEvent) {
      yield FetchColorPickState(color: _repository.getRandomColor());
    }
  }
}