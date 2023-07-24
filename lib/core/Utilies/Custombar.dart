import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.Myblocprovider,
  });

  final Myblocprovider;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: Myblocprovider.currentinderx,
      onTap: (index) {
        Myblocprovider.Tapped(index);
      },
      items: const [
        BottomNavigationBarItem(
          label: 'الرئيسية',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الاعدادات'),
      ],
    );
  }
}
