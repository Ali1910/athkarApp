import 'package:azkarapp/features/Home/azkarelsabah.dart';
import 'package:azkarapp/features/Home/widgets/CustomAzkarbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants.dart';
import '../../../core/cubits/BottomnavigationbarCubit/appcubit.dart';

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
            onTap: () {
              BlocProvider.of<NavagationbarCubit>(context).mainlist = index;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider.of<NavagationbarCubit>(context)
                        .screensview[index];
                  },
                ),
              );
            },
            maintext: miantexts[index],
            subtext: subtexts[index],
            circleavatarchild: circleavatrchildern[index],
            boxcolor: BlocProvider.of<NavagationbarCubit>(context).darkmode
                ? darkboxcolors[index]
                : lightboxcolors[index],
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
