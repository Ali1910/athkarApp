import 'package:azkarapp/core/cubits/BottomnavigationbarCubit/appstates.dart';
import 'package:azkarapp/features/Home/widgets/CustomazkharContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants.dart';
import '../../../core/cubits/BottomnavigationbarCubit/appcubit.dart';

class CustomazkarcontainerListview extends StatelessWidget {
  const CustomazkarcontainerListview({
    super.key,
    required this.maintext,
    required this.numberreqired,
    required this.counter,
  });
  final List maintext;
  final List numberreqired;
  final List counter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavagationbarCubit, BottomNavigationBarStates>(
      builder: (BuildContext context, state) {
        return ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            var of = BlocProvider.of<NavagationbarCubit>(context);
            return GestureDetector(
              onTap: () {
                of.membernumber = index;
                of.index = index;

                of.increment(requirment: int.parse(numberreqired[index]));
                of.alllists[of.mainlist];
              },
              child: CustomAzhkarConatiner(
                currentindex: index,
                maintext: maintext[index],
                numberreqired: numberreqired[index],
                counter: of.alllists[of.mainlist][index],
              ),
            );
          },
          itemCount: maintext.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 10,
            );
          },
        );
      },
    );
  }
}
