import 'package:azkarapp/features/Home/widgets/customcheckbox.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'الوضع المعتم',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            CustomCheckbox(),
          ],
        ),
      ),
    );
  }
}
