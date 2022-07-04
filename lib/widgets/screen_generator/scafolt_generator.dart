import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/blocs/user/user_bloc.dart';
import 'package:planificador/configs/sizes_screens/all_screen.dart';
import 'package:planificador/widgets/appbar/appbar.dart';
import 'package:planificador/widgets/drawer/drawer.dart';
import 'package:planificador/widgets/speeld_dial/speld_dial.dart';

Scaffold generateScreen(BuildContext context,
    {required Widget child, String? place, bool? isLogin}) {
  withSizeScreen = MediaQuery.of(context).size.width;
  heightSizeScreen = MediaQuery.of(context).size.height;

  return Scaffold(
    appBar: appBar(place),
    drawer: isLogin == true ? null : drawer(),
    body: SafeArea(
      child: SizedBox(
        width: withSizeScreen,
        height: heightSizeScreen,
        child: child,
      ),
    ),
    floatingActionButton: BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) => current.loginUser,
      builder: (context, state) {
        return state.loginUser ? speedDial() : const SizedBox();
      },
    ),
  );
}
