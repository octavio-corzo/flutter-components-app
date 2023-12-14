import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listview1',
      name: 'List View tipo 1',
      screen: const ListView1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'inputs',
      name: ' Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_outlined,
    ),
    MenuOption(
      route: 'listview2',
      name: 'List View tipo 2',
      screen: const ListView2Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert Screen',
      screen: const AlertScreen(),
      icon: Icons.warning,
    ),
    MenuOption(
      route: 'card',
      name: 'Card Screen',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Avatar Screen',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ListView1Screen(),
    );
  }
}
