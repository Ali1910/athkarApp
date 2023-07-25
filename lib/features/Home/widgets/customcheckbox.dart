import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cubits/BottomnavigationbarCubit/appcubit.dart';
import '../../../core/cubits/BottomnavigationbarCubit/appstates.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavagationbarCubit, BottomNavigationBarStates>(
      builder: (BuildContext context, state) {
        return Checkbox(
          value: BlocProvider.of<NavagationbarCubit>(context).darkmode,
          onChanged: (value) {
            BlocProvider.of<NavagationbarCubit>(context).modestate();
          },
        );
      },
    );
  }
}
