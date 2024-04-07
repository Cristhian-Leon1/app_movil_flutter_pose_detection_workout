import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/login_email_textfield.dart';
import 'widgets/login_password_textfield.dart';

class LoginForm extends StatelessWidget {
  final Size size;
  const LoginForm({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Correo electrónico:',
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            EmailTextField(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.02),
        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Contraseña:',
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            PassTextField(size: size),
          ],
        ),
      ],
    );
  }
}
