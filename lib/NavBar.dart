// ignore_for_file: prefer_final_fields, file_names

import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/UIPage.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // var _isLoading2 = false;

  int indexVal = 0;

  final navIcon = const <Widget>[
    Icon(Icons.home, size: 30),
    Icon(Icons.restaurant_outlined, size: 30),
    Icon(Icons.shopping_cart_outlined, size: 30),
    Icon(Icons.favorite_outline, size: 30),
    Icon(Icons.more_vert, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    // print(selectedCafe);
    return CurvedNavBar(
      actionButton: CurvedActionBar(
          onTab: (value) {
            /// perform action here
            // print(value);
          },
          activeIcon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Theme.of(context).primaryColor,
              ),
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.shopping_cart,
              size: 50,
              color: Colors.green,
            ),
          ),
          inActiveIcon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Theme.of(context).primaryColor,
              ),
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Container(
              child: const Icon(
                Icons.shopping_cart_outlined,
                size: 50,
                color: Colors.green,
              ),
            ),
          ),
          text: ""),

      navBarBackgroundColor: Colors.green,
      activeColor: Colors.white,
      inActiveColor: Colors.white,
      appBarItems: [
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.window,
              color: Colors.white,
            ),
            inActiveIcon: const Icon(
              Icons.window_outlined,
              color: Colors.white,
            ),
            text: ''),
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            inActiveIcon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            text: ''),
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.card_giftcard,
              color: Colors.white,
            ),
            inActiveIcon: const Icon(
              Icons.card_giftcard_outlined,
              color: Colors.white,
            ),
            text: ''),
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.display_settings,
              color: Colors.white,
            ),
            inActiveIcon: const Icon(
              Icons.display_settings_outlined,
              color: Colors.white,
            ),
            text: ''),
      ],
      bodyItems: const [
        UIPage(),
        UIPage(),
        UIPage(),
        UIPage(),
      ],
      // actionBarView: OrderScreen(),
    );
  }
}
