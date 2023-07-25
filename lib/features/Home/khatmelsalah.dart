import 'package:azkarapp/core/constants.dart';
import 'package:azkarapp/features/Home/widgets/CustomazkarContainerlistview.dart';

import 'package:flutter/material.dart';

class khatmelsalah extends StatelessWidget {
  const khatmelsalah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'ختم الصلاة',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: CustomazkarcontainerListview(
              maintext: b3delsalah,
              counter: b3delsalahcounter,
              numberreqired: b3delsalahnumberrequired,
            )),
      ),
    );
  }
}
