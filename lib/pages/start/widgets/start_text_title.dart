import 'package:app_movil_flutter_pose_detection_workout/utils/custom/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartTextTitle extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;

  const StartTextTitle({super.key, required this.title1, required this.title2, required this.title3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 140, left: 40, right: 40),
      child: RichText(
        text: TextSpan(
          text: title1,
          style: GoogleFonts.inter(
            fontSize: 38,
            color: AppColors.white,
            letterSpacing: 1,
            height: 1.03,
          ),
          children: <TextSpan>[
            TextSpan(
              text: title2,
                style: const TextStyle(
                  color: AppColors.white,
                )
            ),
            TextSpan(
              text: title3,
              style: const TextStyle(
                color: AppColors.baseColorAI,
              )
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}