import 'package:app_movil_flutter_pose_detection_workout/providers/onbording_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/custom/custom_colors.dart';

class StartButtonPrevious extends StatelessWidget {
  const StartButtonPrevious({super.key});

  @override
  Widget build(BuildContext context) {
    final onbordingProvider = Provider.of<OnbordingProvider>(context);
    return TextButton(
      onPressed: () {
        onbordingProvider.previousPage();
      },
      child: const Icon(
        Icons.arrow_back_ios_rounded,
        color: AppColors.white,
        size: 50,
      ),
    );
  }
}