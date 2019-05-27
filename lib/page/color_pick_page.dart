import 'package:flutter/material.dart';
import 'package:flutter_test_app/bloc/color_pick_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_app/event/ColorPickEvent.dart';
import 'package:flutter_test_app/state/ColorPickState.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ColorPickBloc _bloc = ColorPickBloc();

  @override
  void initState() {
    super.initState();
    _bloc.dispatch(UpdatePickEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(child: SafeArea(
            child: BlocBuilder(
                bloc: _bloc,
                builder: (BuildContext context, ColorPickState state) {
                  if (state is DefaultColorPickState) {
                    return _screen(context, state.color);
                  }
                  if (state is FetchColorPickState) {
                    return _screen(context, state.color);
                  }
                })), onTap: (){
          setState(() {
            _bloc.dispatch(UpdatePickEvent());
          });
        }));
  }
}

Widget _screen(BuildContext context, Color color) {
  return Container(
    color: color,
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child:
        Text("Hey there", style: TextStyle(fontSize: 42, color: Colors.white)),
  );
}
