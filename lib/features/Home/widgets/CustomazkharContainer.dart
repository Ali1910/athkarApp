import 'package:azkarapp/core/cubits/BottomnavigationbarCubit/appcubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAzhkarConatiner extends StatelessWidget {
  const CustomAzhkarConatiner({
    super.key,
    required this.maintext,
    required this.numberreqired,
    required this.counter,
    this.currentindex,
  });
  final String maintext;
  final String numberreqired;
  final int counter;
  final currentindex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.5 / 2.7,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: BlocProvider.of<NavagationbarCubit>(context).darkmode
                ? Colors.blueGrey.withOpacity(0.4)
                : Colors.blueGrey.withOpacity(0.7),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  maintext,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$counter'),
                    const Text('___'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(numberreqired)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
