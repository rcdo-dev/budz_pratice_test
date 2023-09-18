import 'package:flutter/material.dart';

import '../../shared/themes/budz_colors.dart';
import '../../shared/themes/budz_text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final String label;
  final IconData? icon;
  final Radius bottomLeft;
  final Radius bottomRight;
  final Radius topLeft;
  final Radius topRight;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.label,
    this.icon,
    this.bottomLeft = const Radius.circular(16.0),
    this.bottomRight = const Radius.circular(16.0),
    this.topLeft = const Radius.circular(16.0),
    this.topRight = const Radius.circular(16.0),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: BudzColors.light,
            strokeAlign: 1,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: bottomLeft,
            bottomRight: bottomRight,
            topLeft: topLeft,
            topRight: topRight,
          ),
        ),
        backgroundColor: BudzColors.pureWhite,
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              child: Row(
                children: <Widget>[
                  Icon(
                    icon,
                    color: BudzColors.dark,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    label,
                    style: BudzTextStyles.bodyDefaultLarge,
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 0,
            child: SizedBox(
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16.0,
                color: BudzColors.dark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
