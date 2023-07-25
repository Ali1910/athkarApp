import 'package:azkarapp/core/Utilies/shared_preferences.dart';
import 'package:azkarapp/core/constants.dart';

import 'package:azkarapp/core/cubits/BottomnavigationbarCubit/appstates.dart';
import 'package:azkarapp/features/Home/azkarelsabah.dart';
import 'package:azkarapp/features/Home/widgets/Settingsview.dart';
import 'package:azkarapp/features/home/widgets/CustomAzkarListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/Home/azkarelnom.dart';
import '../../../features/Home/azkaremasa.dart';
import '../../../features/Home/khatmelsalah.dart';

class NavagationbarCubit extends Cubit<BottomNavigationBarStates> {
  NavagationbarCubit() : super(InitialState());

  int currentindex = 0;
  bool darkmode = false;
  bool done = false;
  int mainlist = 0;
  int membernumber = 0;
  int index = 0;

  void Tapped(int index) {
    currentindex = index;
    emit(TappedState());
  }

  void increment({required int requirment}) {
    alllists[mainlist][membernumber];
    if (requirment > alllists[mainlist][membernumber]) {
      alllists[mainlist][membernumber]++;
      emit(TappedState());
    } else {
      done = true;
      emit(TappedState());
    }
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

  List<Widget> bottomnavgationbarviews = [
    const Customazkarlistview(),
    const SettingsView()
  ];
  List<Widget> screensview = [
    const Azkarelsabahview(),
    const Azkarelmasaview(),
    const azkarElnom(),
    const khatmelsalah()
  ];
  List<List> alllists = [
    azkarelsabahcounter,
    azkarelmasacounter,
    azkarelnomcounter,
    b3delsalahcounter
  ];
}
