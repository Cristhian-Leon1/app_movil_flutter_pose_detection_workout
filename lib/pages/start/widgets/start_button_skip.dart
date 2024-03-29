import 'package:flutter/material.dart';

class StartButtonSkip extends StatelessWidget {
  const StartButtonSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: const Text(
          'Saltar intro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
          ),
        ),
      ),
    );
  }
}