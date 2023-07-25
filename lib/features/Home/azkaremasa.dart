import 'package:azkarapp/core/constants.dart';
import 'package:azkarapp/features/Home/widgets/CustomazkarContainerlistview.dart';

import 'package:flutter/material.dart';

class Azkarelmasaview extends StatelessWidget {
  const Azkarelmasaview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
