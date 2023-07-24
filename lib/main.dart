import 'package:azkarapp/core/constants.dart';
import 'package:azkarapp/core/cubits/BottomnavigationbarCubit/BottomNavigationBarStates.dart';
import 'package:azkarapp/features/home/homeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/Utilies/shared_preferences.dart';
import 'core/Utilies/themes/Customdarktheme.dart';
import 'core/Utilies/themes/CustomlightTheme.dart';
import 'core/cubits/BottomnavigationbarCubit/Bottomnavigationbarcubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharedhelper.sharedPreferencesinit();
  print(sharedhelper.getdata('isdark'));

  bool isdark = sharedhelper.getdata('isdark') ?? false;
  runApp(
    MyApp(isdark: isdark),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isdark});
  final bool isdark;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavagationbarCubit()..modestate(mode: isdark),
      child: BlocBuilder<NavagationbarCubit, BottomNavigationBarStates>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            theme: BlocProvider.of<NavagationbarCubit>(context).darkmode
                ? Darktheme()
                : LightTheme(),
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
