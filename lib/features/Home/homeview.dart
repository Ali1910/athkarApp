import 'package:azkarapp/core/constants.dart';
import 'package:azkarapp/features/Home/widgets/CustomAzkarbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homeview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        centerTitle: true,
        title: const Text(
          'الرئيسية',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: const Customazkarlistview(),
    );
  }
}

class Customazkarlistview extends StatelessWidget {
  const Customazkarlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomAzkarButton(
            maintext: miantexts[index],
            subtext: subtexts[index],
            boxcolor: boxcolors[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 30,
          );
        },
        itemCount: miantexts.length,
      ),
    );
  }
}
