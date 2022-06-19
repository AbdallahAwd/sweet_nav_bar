import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sweet_nav_bar/sweet_nav_bar.dart';

void main() {
  test('navigate', () {
    final nav = SweetNavBar(
      currentIndex: 0,
      items: [
        SweetNavBarItem(
          sweetLabel: 'Home',
          sweetIcon: const Icon(Icons.home),
        ),
        SweetNavBarItem(
          sweetLabel: 'Profile',
          sweetIcon: const Icon(Icons.person),
        ),
        SweetNavBarItem(
          sweetLabel: 'Settings',
          sweetIcon: const Icon(Icons.home),
        ),
      ],
      onTap: (index) {},
    );
    expect(nav, isNotNull);
  });
}
