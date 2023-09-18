import 'package:flutter/material.dart';

import '../../shared/themes/budz_colors.dart';
import '../../shared/themes/budz_size.dart';
import '../../shared/themes/budz_text_styles.dart';

class ShortProfile extends StatefulWidget {
  final String nameInitials;
  final String userName;
  final String userEmail;

  const ShortProfile({
    super.key,
    this.nameInitials = 'UN',
    this.userName = 'Username',
    this.userEmail = 'email@user.com',
  });

  @override
  State<ShortProfile> createState() => _ShortProfileState();
}

class _ShortProfileState extends State<ShortProfile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: BudzColors.greyLighten,
          maxRadius: BudzSize.XL,
          child: Text(
            widget.nameInitials,
          ),
        ),
        SizedBox(
          width: size.width / 28,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.userName,
              style: BudzTextStyles.titleLarge,
            ),
            Text(
              widget.userEmail,
              style: BudzTextStyles.bodyDefaultSmall,
            ),
          ],
        )
      ],
    );
  }
}
