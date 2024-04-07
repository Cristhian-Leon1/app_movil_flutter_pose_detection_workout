import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../providers/login_provider.dart';
import '../../../utils/custom/custom_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final Size size;
  final String text;

  const CustomElevatedButton({super.key,
                              required this.size,
                              required this.text});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    final emailController = loginProvider.emailController;
    final passwordController = loginProvider.passwordController;

    return ElevatedButton(
      onPressed: () {
        loginProvider.login(emailController, passwordController);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.baseColorAI),
        elevation: MaterialStateProperty.all(3.0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        height: size.height / 13,
        child: Text(
          loginProvider.fragmentState ? 'Registrarse' :'Iniciar sesión',
          style: GoogleFonts.inter(
            fontSize: 17.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
