import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:provider/provider.dart";

import "../../providers/login_provider.dart";
import "../../utils/custom/custom_colors.dart";

class CommonRichText extends StatelessWidget {
  final double fontSize;

  const CommonRichText({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: fontSize,
          color: AppColors.black87,
          letterSpacing: 2.000000061035156,
        ),
        children: [
          TextSpan(
            text: loginProvider.fragmentState ? 'REGISTRARSE ': 'INICIAR ',
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
          TextSpan(
            text: loginProvider.fragmentState ? 'AHORA': 'SESIÓN ',
            style: const TextStyle(
              color: Color(0xFFFE9879),
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

