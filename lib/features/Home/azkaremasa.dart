import 'package:azkarapp/core/constants.dart';
import 'package:azkarapp/features/Home/widgets/CustomazkarContainerlistview.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/cubits/BottomnavigationbarCubit/appcubit.dart';

class Azkarelmasaview extends StatelessWidget {
  const Azkarelmasaview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<NavagationbarCubit>(context)
                    .erasecountersforalmasa();
              },
              icon: const Icon(
                Icons.restart_alt_outlined,
                size: 30,
              ))
        ],
        elevation: 0,
        title: const Text(
          'اذكار المساء',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: CustomazkarcontainerListview(
              maintext: azkarelmasa,
              counter: azkarelmasacounter,
              numberreqired: azkarelmasanumberrequired,
            )),
      ),
    );
  }
}
