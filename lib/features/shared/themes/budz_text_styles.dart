import 'package:budz_pratice_test/features/shared/themes/budz_colors.dart';
import 'package:budz_pratice_test/features/shared/themes/budz_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BudzTextStyles {
  static final titleLarge = GoogleFonts.outfit(
    fontSize: BudzSize.L,
    fontWeight: FontWeight.w700,
    color: BudzColors.dark,
  );

  static final bodyDefaultSmall = GoogleFonts.outfit(
    fontSize: BudzSize.XS,
    fontWeight: FontWeight.w400,
    color: BudzColors.medium,
  );

  static final bodyDefaultLarge = GoogleFonts.outfit(
    fontSize: BudzSize.S,
    fontWeight: FontWeight.w400,
    color: BudzColors.dark,
  );

  static final bodyDefaultError = GoogleFonts.outfit(
    fontSize: BudzSize.S,
    fontWeight: FontWeight.w700,
    color: BudzColors.errorMedium,
  );
}
