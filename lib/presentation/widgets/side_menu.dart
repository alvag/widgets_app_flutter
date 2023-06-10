import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (index) {
        setState(() {
          navDrawerIndex = index;
        });
      },
      children: const [
        NavigationDrawerDestination(
          icon: Icon(Icons.add),
          label: Text("HomeScreen"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.card_travel),
          label: Text("Otra pantalla"),
        )
      ],
    );
  }
}
