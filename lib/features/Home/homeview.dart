import 'package:azkarapp/core/cubits/BottomnavigationbarCubit/BottomNavigationBarStates.dart';
import 'package:azkarapp/core/cubits/BottomnavigationbarCubit/Bottomnavigationbarcubit.dart';
import 'package:azkarapp/features/Home/widgets/CustomAzkarListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/Utilies/Custombar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var Myblocprovider = BlocProvider.of<NavagationbarCubit>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
          )
        ],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'الرئيسية',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: BlocBuilder<NavagationbarCubit, BottomNavigationBarStates>(
        builder: (BuildContext context, state) {
          return Myblocprovider.screenview[Myblocprovider.currentinderx];
        },
      ),
      bottomNavigationBar:
          BlocBuilder<NavagationbarCubit, BottomNavigationBarStates>(
        builder: (BuildContext context, state) {
          return CustomNavigationBar(Myblocprovider: Myblocprovider);
        },
      ),
    );
  }
}
