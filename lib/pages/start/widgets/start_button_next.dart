import 'package:app_movil_flutter_pose_detection_workout/providers/onbording_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/custom/custom_colors.dart';

class StartButtonNext extends StatelessWidget {
  const StartButtonNext({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingProvider = Provider.of<OnbordingProvider>(context);
    return TextButton(
      onPressed: () {
        onboardingProvider.nextPage();
      },
      child: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: AppColors.white,
        size: 50,
      ),
    );
  }
}