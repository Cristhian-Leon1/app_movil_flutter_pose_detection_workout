import 'package:flutter/material.dart';

class StartButtonNext extends StatelessWidget {
  const StartButtonNext({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
      child: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white,
        size: 50,
      ),
    );
  }
}