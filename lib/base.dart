import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:ussd_app/pages/forfaitsPage.dart';
import 'package:ussd_app/pages/homePage.dart';
import 'package:ussd_app/pages/settingsPage.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('USSD APP'),
      ),
      body: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: const Homepage(),
            item: ItemConfig(
              icon: const Icon(Icons.home),
              title: "Accueil",
            ),
          ),
          PersistentTabConfig(
            screen: const ForfaitsPage(),
            item: ItemConfig(
              icon: const Icon(Icons.sync_alt),
              title: "Forfaits",
            ),
          ),
          PersistentTabConfig(
            screen: const SettingsPage(),
            item: ItemConfig(
              icon: const Icon(Icons.settings),
              title: "Settings",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style2BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
