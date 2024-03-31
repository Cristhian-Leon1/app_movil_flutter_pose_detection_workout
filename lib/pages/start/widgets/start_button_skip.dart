import 'package:app_movil_flutter_pose_detection_workout/utils/custom/custom_colors.dart';
import 'package:flutter/material.dart';

class StartButtonSkip extends StatelessWidget {
  const StartButtonSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.baseColorAI,
          backgroundColor: AppColors.black87,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: const Text(
          'Saltar intro',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}