import 'package:azkarapp/features/home/homeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/Utilies/shared_preferences.dart';
import 'core/Utilies/themes/Customdarktheme.dart';
import 'core/Utilies/themes/CustomlightTheme.dart';
import 'core/cubits/BottomnavigationbarCubit/appcubit.dart';
import 'core/cubits/BottomnavigationbarCubit/appstates.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharedhelper.sharedPreferencesinit();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NavagationbarCubit()..modestate(mode: sharedhelper.isdark),
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
