import 'package:azkarapp/core/Utilies/shared_preferences.dart';
import 'package:azkarapp/core/cubits/BottomnavigationbarCubit/BottomNavigationBarStates.dart';
import 'package:azkarapp/features/Home/widgets/Settingsview.dart';
import 'package:azkarapp/features/home/widgets/CustomAzkarListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavagationbarCubit extends Cubit<BottomNavigationBarStates> {
  NavagationbarCubit() : super(InitialState());

  int currentinderx = 0;
  bool darkmode = false;

  void Tapped(int index) {
    currentinderx = index;
    emit(TappedState());
  }

  void modestate({bool? mode}) {
    if (mode != null) {
      darkmode = mode;
      emit(ModeState());
    } else {
      darkmode = !darkmode;
      sharedhelper
          .putdata('isdark', darkmode)
          .then((value) => emit(ModeState()));
    }
  }

  List<Widget> screenview = [const Customazkarlistview(), const SettingsView()];
}
