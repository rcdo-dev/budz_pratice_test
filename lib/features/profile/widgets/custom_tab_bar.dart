import 'package:flutter/material.dart';

import '../../shared/themes/budz_colors.dart';
import '../../shared/themes/budz_text_styles.dart';

class CustomTabBar extends StatefulWidget {
  final double height;

  const CustomTabBar({
    super.key,
    this.height = 68.0,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        color: BudzColors.pureWhite,
        height: widget.height,
        child: TabBar(
          labelStyle: BudzTextStyles.bodyDefaultSmall,
          labelColor: BudzColors.blueDark,
          unselectedLabelColor: BudzColors.medium,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.all(6.0),
          indicatorColor: BudzColors.dark,
          indicatorWeight: 4.0,
          tabs: const <Widget>[
            Tab(
              text: 'Início',
              icon: Icon(
                Icons.home_outlined,
              ),
            ),
            Tab(
              text: 'Jornadas',
              icon: Icon(
                Icons.grid_view_outlined,
              ),
            ),
            Tab(
              text: 'Chatbot',
              icon: Icon(
                Icons.message_outlined,
              ),
            ),
            Tab(
              text: 'Perfil',
              icon: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
