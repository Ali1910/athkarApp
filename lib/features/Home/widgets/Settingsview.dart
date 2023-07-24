import 'package:azkarapp/core/cubits/BottomnavigationbarCubit/Bottomnavigationbarcubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/Utilies/shared_preferences.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'الوضع المعتم',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            IconButton(
                onPressed: () {
                  BlocProvider.of<NavagationbarCubit>(context).modestate();
                },
                icon: Icon(Icons.light_mode_outlined))
          ],
        ),
      ),
    );
  }
}
