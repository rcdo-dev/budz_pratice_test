import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/themes/budz_colors.dart';
import '../../shared/themes/budz_size.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Size sizeValue;
  final Widget child;

  const CustomAppBar({
    super.key,
    required this.sizeValue,
    required this.child,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => sizeValue;
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: AppBar(
        elevation: BudzSize.zero,
        leadingWidth: BudzSize.infinity,
        toolbarHeight: size.height / 8,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: BudzColors.pureWhite,
        ),
        backgroundColor: BudzColors.pureWhite,
        leading: Padding(
          padding: const EdgeInsets.all(
            10.0,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
