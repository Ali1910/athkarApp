import 'package:azkarapp/core/constants.dart';
import 'package:azkarapp/features/Home/widgets/CustomazkarContainerlistview.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/cubits/BottomnavigationbarCubit/appcubit.dart';

class azkarElnom extends StatelessWidget {
  const azkarElnom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<NavagationbarCubit>(context)
                    .erasecountersforalnoam();
              },
              icon: const Icon(
                Icons.restart_alt_outlined,
                size: 30,
              ))
        ],
        elevation: 0,
        title: const Text(
          'اذكار قبل النوم',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: CustomazkarcontainerListview(
              maintext: azkarelnom,
              counter: azkarelnomcounter,
              numberreqired: azkarelnomnumberrequired,
            )),
      ),
    );
  }
}
