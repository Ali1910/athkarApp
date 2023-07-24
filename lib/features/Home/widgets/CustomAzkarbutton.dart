import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cubits/BottomnavigationbarCubit/Bottomnavigationbarcubit.dart';

class CustomAzkarButton extends StatelessWidget {
  const CustomAzkarButton(
      {super.key,
      required this.maintext,
      required this.subtext,
      required this.boxcolor,
      required this.circleavatarchild});
  final String maintext;
  final String circleavatarchild;
  final String subtext;
  final Color boxcolor;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      child: AspectRatio(
        aspectRatio: 3.5 / 1,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(64),
            gradient: LinearGradient(
              colors: [
                BlocProvider.of<NavagationbarCubit>(context).darkmode
                    ? boxcolor.withOpacity(0.4)
                    : boxcolor.withOpacity(0.7),
                boxcolor.withOpacity(0.5),
                BlocProvider.of<NavagationbarCubit>(context).darkmode
                    ? boxcolor.withOpacity(0.7)
                    : boxcolor.withOpacity(0.4),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    maintext,
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      subtext,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              CircleAvatar(
                radius: 42,
                backgroundColor: Colors.white,
                // backgroundImage: AssetImage('assets/images/OIP.jpeg'),

                child: Text(
                  circleavatarchild,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
